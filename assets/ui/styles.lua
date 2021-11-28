return {
	default = {
		font_height = 42,
		spacing = 1, -- pixels between letters
		scale = 1, -- scale of character
		waving = false, -- if true - do waving by sinus
		color = "#f5e3bc",
		speed = 0.04,
		appear = 0.05,
		shaking = 0, -- shaking power. Set to 0 to disable
		sound = "letter",
		can_skip = true,
		shake_on_write = 0 -- when letter appear, shake dialogue screen
	},
	highlight1={
		shaking = 5
	},
	highlight2={
		shaking = 6,
		scale=3
	},
	highlight3={
		color = "#ff5500",
		shaking = 7,
		scale=4
	},
	highlight4={
		color = "#f22222",
		shaking = 9,
		scale=4
	},
	highlight5={
		color = "#32f1ff",
		shake_on_write = 9
	},
	highlight6={
		color = "#ffe400",
		waving = 30,
		scale = 2.5
	},
	highlight7={
		color = "#ffe400",
		waving = 15,
	},
	slow_appear = {
		speed = 0.08,
		color = "#32f1ff",
		shake_on_write = 9
	},

	define_style = {
		speed = 0.1,
		shake_on_write = 3,
		color = "#DA4576"
	},
}