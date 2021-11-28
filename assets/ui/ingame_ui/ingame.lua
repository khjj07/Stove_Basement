local G={}
local box_node = require "DefUtil.DefUI.module.box_node"
local text_node = require "DefUtil.DefUI.module.text_node"
function G.init(self)
	self.box_node={}
	self.text_node={}
	self.box_node["gameover_tap"]=box_node.create(gui.get_node("gameover_tap"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["gameover_menu"]=box_node.create(gui.get_node("gameover_menu"),vmath.vector3(960.,331.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(300.,300.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["retry_btn"]=box_node.create(gui.get_node("retry_btn"),vmath.vector3(0.,63.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(250.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["retry"]=text_node.create(gui.get_node("retry"),"",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["title_btn"]=box_node.create(gui.get_node("title_btn"),vmath.vector3(0.,-74.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(250.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["title"]=text_node.create(gui.get_node("title"),"",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.text_node["gameover"]=text_node.create(gui.get_node("gameover"),"",vmath.vector3(944.,610.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(6.,6.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["bullet"]=text_node.create(gui.get_node("bullet"),"",vmath.vector3(199.,978.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(2.,2.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["gamepause_menu"]=box_node.create(gui.get_node("gamepause_menu"),vmath.vector3(960.,480.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(300.,400.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.box_node["retry_btn1"]=box_node.create(gui.get_node("retry_btn1"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(250.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["retry1"]=text_node.create(gui.get_node("retry1"),"",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["title_btn1"]=box_node.create(gui.get_node("title_btn1"),vmath.vector3(0.,-130.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(250.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["title1"]=text_node.create(gui.get_node("title1"),"",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["resume_btn"]=box_node.create(gui.get_node("resume_btn"),vmath.vector3(0.,120.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(250.,100.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["retry2"]=text_node.create(gui.get_node("retry2"),"",vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.box_node["ending"]=box_node.create(gui.get_node("ending"),vmath.vector3(0.,0.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(1.,1.,1.),vmath.vector3(1920.,1080.,0.),vmath.vector4(0.,0.,0.,0.),vmath.vector4(1.,1.,1.,1.))
	self.text_node["text"]=text_node.create(gui.get_node("text"),"",vmath.vector3(960.,540.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(5.,5.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.,0.,1.))
	self.text_node["text1"]=text_node.create(gui.get_node("text1"),"",vmath.vector3(960.,325.,0.),vmath.vector3(0.,0.,0.),vmath.vector3(2.,2.,1.),vmath.vector3(200.,100.,0.),vmath.vector4(0.,0.501960,0.,1.))
end
return G