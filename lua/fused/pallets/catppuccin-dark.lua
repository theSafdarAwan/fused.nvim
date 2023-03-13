local colors = {
	crust = "#11111B",
	mantle = "#1E1E2E",
	base = "#181825",
	surface0 = "#313244",
	overlay1 = "#44475a",
	white = "#abb2bf",
	text = "#CDD6F4",
	-- lsp diagnostics colors
	red_washed = "#EBA0AC",
	yellow = "#F9E2AF",
	sky = "#89DCEB",
	-- add next pair of dark colors wit the lsp diagnostics but in same order
	red = "#ED8796",
	peach = "#FAB387",
	teal = "#94E2D5",
	-- now replace these colors with the colors that you want these colors to be
	-- replaced with
	mauve = "#CBA6F7", -- for things like keywords,etc.
	green = "#A6E3A1", -- for search, match, title, etc
	orange_light = "#FFB86C",
	blue = "#89B4FA", -- for variable name etc.
	lavender = "#B4BEFE", -- color for string
	-- ts-rainbow brackets pair colors
	-- TODO: add new colors for ts-rainbow
	ts_rainbow_aqua = "#8ec07c",
	ts_rainbow_pruple = "#d3869b",
	ts_rainbow_blue = "#83a598",
}

local M = {}

M.pallet = {
	base01 = colors.crust,
	base02 = colors.mantle,
	base03 = colors.base,
	base04 = colors.surface0,
	base05 = colors.overlay1,
	base06 = colors.white,
	base07 = colors.text,

	base08 = colors.red_washed,
	base09 = colors.yellow,
	base10 = colors.sky,

	base11 = colors.red,
	base12 = colors.peach,
	base13 = colors.teal,

	base14 = colors.mauve,
	base15 = colors.green,
	base16 = colors.orange_light,
	base17 = colors.blue,
	base18 = colors.lavender,

	base19 = colors.ts_rainbow_aqua,
	base20 = colors.orange_light,
	base21 = colors.ts_rainbow_purple,
	base22 = colors.yellow,
	base23 = colors.sky,
}

return M
