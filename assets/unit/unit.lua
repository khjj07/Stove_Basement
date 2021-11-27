local U={}
local DIRECTION =
{
	left="left",
	right="right",
	up="up",
	down="down"
}
local ANIMATION = 
{
	idle=hash("Idle"),
	walk=hash("Walk"),
	jump=hash("Jump")
}
local HP_STATE=
{
	full=vmath.vector4(1,0,0,0.5),
	normal=vmath.vector4(1,1,0,0.5),
	danger=vmath.vector4(0,0,1,0.5)
}
--모듈 사용법
--local Unit = require "assets.unit.unit"
function U.update_hp(self)
	go.set("#hp","scale.x",self.hp/self.maxhp)
	if self.hp>10 then
		go.set("#hp", "tint",HP_STATE.full)
		go.set("#hp_end", "tint",HP_STATE.full)
	elseif self.hp>5 then
		go.set("#hp", "tint",HP_STATE.normal)
		go.set("#hp_end", "tint",HP_STATE.normal)
	else
		go.set("#hp", "tint",HP_STATE.danger)
		go.set("#hp_end", "tint",HP_STATE.danger)
	end
end
function U.init_hp(self)
	go.set("#hp","scale.x",self.hp/self.maxhp)
	go.set("#hp", "tint",HP_STATE.full)
	go.set("#hp_end", "tint",HP_STATE.full)
	timer.delay(self.hp_decrease_time, true, function()
		if self.hp>0 then
			self.hp=self.hp-1
		end
	end)
end

local function apply_normal_force(self,distance,normal,relative_velocity)
	go.set_position(go.get_position()+distance*normal)
	if normal.y>0 then
		if not self.jumpable then
			self.vel=self.vel+normal*math.abs(self.vel.y*1.3)
		else
			self.vel.y=0
		end
		if math.abs(self.vel.y)<50 then
			self.jumpable=true
			self.on_ground=true
		end
	end
	
end

function U.init(self)
	self.vel=vmath.vector3()
	self.jumpable = false
	self.on_ground = false
	self.current_animation=ANIMATION.idle
	--self.friction = 0.1
	--self.gravity = vmath.vector3(0,-10,0)
end

function U.animation(self)
	print(math.abs(self.vel.y))
	if not self.on_ground or math.abs(self.vel.y)>vmath.length(self.gravity)+20 then
		msg.post("#sprite", "play_animation",{id=ANIMATION.jump})
		self.current_animation = ANIMATION.jump
	elseif self.current_animation ~= ANIMATION.walk and math.abs(self.vel.x)>10 then
		msg.post("#sprite", "play_animation",{id=ANIMATION.walk})
		self.current_animation = ANIMATION.walk
	elseif self.current_animation ~= ANIMATION.idle and math.abs(self.vel.x)<=10 then
		msg.post("#sprite", "play_animation",{id=ANIMATION.idle})
		self.current_animation = ANIMATION.idle
	end
	
end

function U.move(self,direction,speed)
	speed=speed or self.speed
	if DIRECTION.left == direction then
		self.vel.x = -speed
		sprite.set_hflip("#sprite",true)
	elseif DIRECTION.right == direction then
		self.vel.x = speed
		sprite.set_hflip("#sprite", false)
	elseif DIRECTION.up == direction then
		self.vel.y = speed
	elseif DIRECTION.down == direction then
		self.vel.y = -speed
	else
		self.vel= self.speed*direction
	end
end

function U.jump(self,power)
	self.vel.y=power
	self.on_ground =false
	--go.animate(".", "vel.y", go.PLAYBACK_ONCE_FORWARD, power, go.EASING_INBACK, 1)
end

function U.update(self,dt)
	local pos = go.get_position()+self.vel*dt
	go.set_position(pos)
	self.vel = self.vel - self.vel*self.friction
	if self.gravity then
		self.vel=self.vel+self.gravity
	end
	self.jumpable=false
end

function U.on_message(self, message_id, message, sender)
	if message_id==hash("contact_point_response") then
		apply_normal_force(self,message.distance,message.normal,message.relative_velocity)
	end
end

return U