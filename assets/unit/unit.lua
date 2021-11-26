local U={}
local DIRECTION =
{
	left="left",
	right="right",
	up="up",
	down="down"
}
--모듈 사용법
--local Unit = require "assets.unit.unit"
local function apply_normal_force(self,distance,normal)
	if normal.y>0.7 and self.gravity then
		self.vel=self.vel+vmath.vector3(0,1,0)*vmath.length(self.gravity)
		self.jumpable=true
	end
	go.set_position(go.get_position()+distance*normal)
end

function U.init(self)
	self.vel=vmath.vector3()
	self.jumpable = false
	--self.friction = 0.1
	--self.gravity = vmath.vector3(0,-10,0)
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
	self.jumpable=false
	--go.animate(".", "vel.y", go.PLAYBACK_ONCE_FORWARD, power, go.EASING_INBACK, 1)
end

function U.update(self,dt)
	local pos = go.get_position()+self.vel*dt
	go.set_position(pos)
	self.vel = self.vel - self.vel*self.friction
	if self.gravity then
		self.vel=self.vel+self.gravity
	end
end

function U.on_message(self, message_id, message, sender)
	if message_id==hash("contact_point_response") then
		apply_normal_force(self,message.distance,message.normal)
	end
end

return U