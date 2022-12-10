-- colors should be defined here
local colors = {
	surface = "#101521",
	background = "#0F111A",
	surface2 = "#1a1b26",
	dark = "#1a1b26",

	white = "#abb2bf",
	text = "#CAD3F5",
	ceil = "#8991BA",

	cinnabar = "#fa4824",
	pink_red = "#ff5370",
	candy_pink = "#e4717a",
	red = "#E78284",

	green = "#71F094",
	blue = "#948AE3",
	magenta = "#ee82ee",
	light_pink = "#EBBBFF",
	teal = "#1abc9c",
	yellow = "#FCCF6C",
	orange = "#FFB86C",
	big_foot_feet = "#e88e5a",
	aero = "#4FC1FF",
	sky = "#0FCFFF",
	french_sky_blue = "#88a5fe",

	bg_context = "#181926",

	compliment1 = "#494D64",
	compliment2 = "#7F849C",
	compliment3 = "#373844",
	compliment4 = "#292e42",
	compliment5 = "#181926",

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
	bg_windows = colors.surface,
	bg_windows2 = colors.surface2,
	bg = colors.background,
	dark = colors.dark,
	white = colors.white,
	text = colors.text,
	string = colors.ceil,
	border = colors.dark,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.pink_red,
	err_sev = colors.cinnabar,

	-- editor colors
	folds = colors.ceil,
	search = colors.green,

	-- language lsp symbols
	func = colors.red,
	property = colors.sky,
	variable = colors.french_sky_blue,
	method = colors.magenta,
	keywords = colors.blue,
	const = colors.big_foot_feet,

	bg_context = colors.bg_context,

	-- compliment colors not important but useful
	cp1 = colors.compliment1,
	cp2 = colors.compliment2,
	cp3 = colors.compliment3,
	cp4 = colors.compliment4,
	cp5 = colors.compliment5,

	-- colors by names
	light_pink = colors.light_pink,
	red = colors.red,
	red2 = colors.candy_pink,
	magenta = colors.magenta,
	magenta2 = colors.blue,
	teal = colors.teal,
	orange = colors.orange,
	blue = colors.aero,

	-- brackets pairs colors
	ts_aqua = colors.ts_rainbow_aqua,
	ts_deep_yellow = colors.big_foot_feet,
	ts_purple = colors.ts_rainbow_purple,
	ts_yellow = colors.yellow,
	ts_cyan = colors.sky,
}

return M
