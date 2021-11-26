local G={}
local box_node = require "DefUtil.DefUI.module.box_node"
local text_node = require "DefUtil.DefUI.module.text_node"
function G.init(self)
	self.box_node={}
	self.text_node={}
	self.box_node["start_btn"]=box_node.create(gui.get_node("start_btn"),vmath.vector3(960.,600.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["start_text"]=text_node.create(gui.get_node("start_text"),"게임 시작",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["setting_btn"]=box_node.create(gui.get_node("setting_btn"),vmath.vector3(960.,460.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["setting_text"]=text_node.create(gui.get_node("setting_text"),"게임 설정",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["exit_btn"]=box_node.create(gui.get_node("exit_btn"),vmath.vector3(960.,320.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["exit_text"]=text_node.create(gui.get_node("exit_text"),"게임 종료",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["setting_window"]=box_node.create(gui.get_node("setting_window"),vmath.vector3(960.,480.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(300.,400.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["setting_window_cross"]=box_node.create(gui.get_node("setting_window_cross"),vmath.vector3(127.,176.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(30.,30.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["cross"]=text_node.create(gui.get_node("cross"),"X",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(30.,30.,0.),vmath.vector4(0.,0.,0.,1.))
end
return G