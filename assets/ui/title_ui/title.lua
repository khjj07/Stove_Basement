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
	self.box_node["BGM_slider_box"]=box_node.create(gui.get_node("BGM_slider_box"),vmath.vector3(20.,50.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,40.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(0.701960,0.701960,0.701960,1.))
	self.box_node["BGM_slider_btn"]=box_node.create(gui.get_node("BGM_slider_btn"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(30.,30.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["SFX_slider_box"]=box_node.create(gui.get_node("SFX_slider_box"),vmath.vector3(20.,-20.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,40.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(0.701960,0.701960,0.701960,1.))
	self.box_node["SFX_slider_btn"]=box_node.create(gui.get_node("SFX_slider_btn"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(30.,30.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["BGM_btn"]=box_node.create(gui.get_node("BGM_btn"),vmath.vector3(-110.,50.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(50.,50.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["SFX_btn"]=box_node.create(gui.get_node("SFX_btn"),vmath.vector3(-110.,-20.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(50.,50.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["setting_title"]=text_node.create(gui.get_node("setting_title"),"게임 설정",vmath.vector3(0.,120.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.10196078,0.10196078,0.10196078,1.))
	self.box_node["reset_btn"]=box_node.create(gui.get_node("reset_btn"),vmath.vector3(-70.,-130.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(120.,50.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["reset"]=text_node.create(gui.get_node("reset"),"초기화",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.10196078,0.10196078,0.10196078,1.))
	self.box_node["save_btn"]=box_node.create(gui.get_node("save_btn"),vmath.vector3(70.,-130.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(120.,50.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["save"]=text_node.create(gui.get_node("save"),"저장 후 나가기",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.10196078,0.10196078,0.10196078,1.))
	self.box_node["title"]=box_node.create(gui.get_node("title"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["cutscenes"]=box_node.create(gui.get_node("cutscenes"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene1"]=box_node.create(gui.get_node("scene1"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene2"]=box_node.create(gui.get_node("scene2"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene3"]=box_node.create(gui.get_node("scene3"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene4"]=box_node.create(gui.get_node("scene4"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene5"]=box_node.create(gui.get_node("scene5"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene6"]=box_node.create(gui.get_node("scene6"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene7"]=box_node.create(gui.get_node("scene7"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene8"]=box_node.create(gui.get_node("scene8"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["scene9"]=box_node.create(gui.get_node("scene9"),vmath.vector3(97.,-309.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	
	self.box_node["dialog/text_parent"]=box_node.create(gui.get_node("dialog/text_parent"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1080.,250.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(0.10196078,0.10196078,0.10196078,1.))
	self.text_node["dialog/prefab"]=text_node.create(gui.get_node("dialog/prefab"),"X",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(2.,2.,1.),vmath.vector3(1080.,100.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["dialog/prefab_icon"]=box_node.create(gui.get_node("dialog/prefab_icon"),vmath.vector3(-82.,-7.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(32.,32.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["black"]=box_node.create(gui.get_node("black"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(0.,0.,0.,1.))
end
return G