local U={}
--모듈 사용법
--local Unit = require "assets.unit.unit"

function U.init(self)
	self.vel = vmath.vector3()
	self.friction = 0.1
	--self.gravity = vmath.vector3(0,-10,0)
end

function U.update(self,dt)
	local pos = go.get_position()+self.vel*dt
	go.set_position(pos)
	self.vel = self.vel - self.vel*self.friction
	self.vel=self.vel+self.gravity
end

function on_message(self, message_id, message, sender)
	if message_id==hash("contact_point_response") then
		
	end	
end

return U