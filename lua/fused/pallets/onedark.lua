local colors = {
	white = "#abb2bf",
	text = "#CDD6F4",
	darker_black = "#1b1f27",
	black = "#1e222a",
	black2 = "#252931",
	one_bg = "#282c34",

	compliment1 = "#42464e",
	compliment2 = "#6f737b",
	compliment3 = "#353b45",
	compliment4 = "#373b43",
	compliment5 = "#31353d",

	red = "#e06c75",
	baby_pink = "#DE8C92",
	pink = "#ff75a0",
	green = "#98c379",
	vibrant_green = "#7eca9c",
	nord_blue = "#81A1C1",
	blue = "#61afef",
	yellow = "#e7c787",
	sun = "#EBCB8B",
	purple = "#de98fd",
	dark_purple = "#c882e7",
	teal = "#519ABA",
	orange = "#fca2aa",
	cyan = "#a3b8ef",
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
	string = colors.white,
	border = colors.grey,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.red,
	err_sev = colors.baby_pink,

	-- editor colors
	folds = colors.white,
	search = colors.green,

	-- language lsp symbols
	func = colors.purple,
	property = colors.blue,
	variable = colors.nord_blue,
	method = colors.pink,
	keywords = colors.cyan,
	const = colors.sun,

	-- compliment colors not important but useful
	cp1 = colors.compliment1,
	cp2 = colors.compliment2,
	cp3 = colors.compliment3,
	cp4 = colors.compliment4,
	cp5 = colors.compliment5,

	-- colors by names
	light_pink = colors.purple,
	red = colors.red,
	red2 = colors.baby_pink,
	magenta = colors.purple,
	magenta2 = colors.dark_purple,
	teal = colors.teal,
	orange = colors.orange,
	blue = colors.blue,

	-- brackets pairs colors
	ts_aqua = colors.nord_blue,
	ts_deep_yellow = colors.orange,
	ts_purple = colors.purple,
	ts_yellow = colors.sun,
	ts_cyan = colors.cyan,
}

return M
