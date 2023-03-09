local colors = {
	white = "#abb2bf",
	flamingo = "#F2CDCD",
	pink = "#FFB86C",
	mauve = "#CBA6F7",
	red = "#ED8796",
	-- red = "#F38BA8",
	maroon = "#EBA0AC",
	light_pink = "#ff75a0",
	peach = "#FAB387",
	yellow = "#F9E2AF",
	green = "#A6E3A1",
	teal = "#94E2D5",
	sky = "#89DCEB",
	blue = "#89B4FA",
	blue2 = "#948AE3",
	lavender = "#B4BEFE",

	text = "#CDD6F4",

	subtext0 = "#A6ADC8",
	overlay1 = "#44475a",
	surface0 = "#313244",

	base = "#1E1E2E",
	mantle = "#181825",
	crust = "#11111B",

	-- ts-rainbow brackets pair colors
	ts_rainbow_aqua = "#8ec07c",
	ts_rainbow_pruple = "#d3869b",
	ts_rainbow_blue = "#83a598",
}

local M = {}
M.pallete = {
	base01 = colors.crust,
	base02 = colors.mantle,
	base03 = colors.base,
	base04 = colors.surface0,
	base05 = colors.overlay1,
	base06 = colors.base06,
	base07 = colors.text,

	string = colors.lavender,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.red,
	err_sev = colors.maroon,

	-- editor colors
	folds = colors.lavender,
	search = colors.green,

	-- lsp symbols
	func = colors.red,
	property = colors.sky,
	variable = colors.blue,
	method = colors.pink,
	keywords = colors.mauve,
	const = colors.peach,

	bg_conbase07 = colors.bg_context,

	-- colors by names
	light_pink = colors.light_pink,
	red = colors.red,
	magenta = colors.mauve,
	magenta2 = colors.blue2,
	teal = colors.teal,
	orange = colors.peach,
	blue = colors.sky,

	-- brackets pairs colors
	ts_aqua = colors.ts_rainbow_aqua,
	ts_deep_yellow = colors.pink,
	ts_purple = colors.ts_rainbow_purple,
	ts_yellow = colors.yellow,
	ts_cyan = colors.sky,
}

return M
