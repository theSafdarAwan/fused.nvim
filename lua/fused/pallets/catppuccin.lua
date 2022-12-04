-- colors should be defined here
local colors = {
	white = "#abb2bf",
	flamingo = "#F2CDCD",
	pink = "#F5C2E7",
	mauve = "#CBA6F7",
	red = "#ED8796",
	red2 = "#F38BA8",
	maroon = "#EBA0AC",
	light_pink = "#ff75a0",
	peach = "#FAB387",
	yellow = "#F9E2AF",
	green = "#A6E3A1",
	teal = "#94E2D5",
	sky = "#89DCEB",
	sapphire = "#74C7EC",
	blue = "#89B4FA",
	blue2 = "#948AE3",
	lavender = "#B4BEFE",

	text = "#CDD6F4",

	overlay1 = "#44475a",
	subtext0 = "#A6ADC8",
	surface0 = "#313244",
	surface1 = "#45475A",
	overlay2 = "#9399B2",
	surface2 = "#191828",

	base = "#1E1E2E",
	mantle = "#181825",
	crust = "#11111B",

	-- ts-rainbow brackets pair colors
	ts_rainbow_aqua = "#8ec07c",
	ts_rainbow_pruple = "#d3869b",
	ts_rainbow_blue = "#83a598",
}

-- @Spec a new table of colors should be exported with the same names as these so that
-- we can define a new color and give it in here to the key that is being use in
-- the whole color scheme without the need to change color scheme's other
-- components and altering colors behaviour in different themes for different
-- symbols. Therefore altering the hierarchy.
local M = {}
M.pallete = {
	bg_windows = colors.base,
	bg_windows2 = colors.mantle,
	bg = colors.crust,
	dark = colors.surface0,
	white = colors.white,
	text = colors.text,
	string = colors.lavender,
	border = colors.surface0,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.red,
	err_sev = colors.maroon,

	-- editor colors
	folds = colors.lavender,
	search = colors.green,

	-- language lsp symbols
	func = colors.red,
	property = colors.sky,
	variable = colors.blue,
	method = colors.pink,
	keywords = colors.mauve,
	const = colors.peach,

	-- compliment colors not important but useful
	cp1 = colors.overlay1,
	cp2 = colors.subtext0,
	cp3 = colors.surface0,
	cp4 = colors.surface1,
	cp5 = colors.overlay2,
	cp6 = colors.surface2,

	-- colors by names
	light_pink = colors.light_pink,
	red = colors.red,
	red2 = colors.red2,
	magenta = colors.mauve,
	magenta2 = colors.blue2,
	teal = colors.teal,
	orange = colors.peach,
	blue = colors.sky,
	blu2 = colors.sapphire,

	-- brackets pairs colors
	ts_aqua = colors.ts_rainbow_aqua,
	ts_deep_yellow = colors.big_foot_feet,
	ts_purple = colors.ts_rainbow_purple,
	ts_yellow = colors.yellow,
	ts_cyan = colors.sky,
}

return M
