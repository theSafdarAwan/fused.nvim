local colors = {
	text = "#ced4df",
	white = "#abb2bf",
	darker_black = "#1c1c26",
	black = "#20202A",
	black2 = "#25252f",
	one_bg = "#2a2a34",
	one_bg2 = "#34343e",

	compliment1 = "#3e3e48",
	compliment2 = "#73747e",
	compliment3 = "#2e2e38",
	compliment4 = "#262630",
	compliment5 = "#20202a",

	red = "#ebb9b9",
	baby_pink = "#EAC1C1",
	pink = "#E9D1D1",
	green = "#b1dba4",
	vibrant_green = "#BEE0A8",
	blue = "#CDDBF9",
	nord_blue = "#BCCAEB",
	yellow = "#E6DFB8",
	sun = "#EEE8BA",
	purple = "#f6bbe7",
	dark_purple = "#E8B6E9",
	teal = "#AEDCB7",
	orange = "#E8CCA7",
	cyan = "#b8dceb",
	folder_bg = "#b8dceb",
}

-- @Spec a new table of colors should be exported with the same names as these so that
-- we can define a new color and give it in here to the key that is being use in
-- the whole color scheme without the need to change color scheme's other
-- components and altering colors behaviour in different themes for different
-- symbols. Therefore altering the hierarchy.
local M = {}
M.pallete = {
	bg_windows = colors.black,
	bg_windows2 = colors.black2,
	bg = colors.darker_black,
	dark = colors.one_bg,
	white = colors.white,
	text = colors.text,
	string = colors.nord_blue,
	border = colors.one_bg2,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.red,
	err_sev = colors.red,

	-- editor colors
	folds = colors.blue,
	search = colors.green,

	-- language lsp symbols
	func = colors.red,
	property = colors.cyan,
	variable = colors.nord_blue,
	method = colors.pink,
	keywords = colors.teal,
	const = colors.orange,

	-- compliment colors not important but useful
	cp1 = colors.compliment1,
	cp2 = colors.compliment2,
	cp3 = colors.compliment3,
	cp4 = colors.compliment4,
	cp5 = colors.compliment5,

	-- colors by names
	light_pink = colors.dark_purple,
	red = colors.red,
	red2 = colors.baby_pink,
	magenta = colors.purple,
	magenta2 = colors.dark_purple,
	teal = colors.teal,
	orange = colors.orange,
	blue = colors.folder_bg,

	-- brackets pairs colors
	ts_aqua = colors.vibrant_green,
	ts_deep_yellow = colors.sun,
	ts_purple = colors.purple,
	ts_yellow = colors.baby_pink,
	ts_cyan = colors.folder_bg,
}

return M
