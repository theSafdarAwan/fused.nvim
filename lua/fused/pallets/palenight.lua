-- this is palenight-mild-contrast theme
local colors = {
	violet = "#7e57c2",
	mauve = "#d1aaff",
	keyword = "#C792EA",
	git_mod = "#e2b93d",
	yellow = "#ffcb8b",
	const = "#FFCB6B",
	string = "#C3E88D",
	number = "#F78C6C",
	green = "#9CCC65",
	regex = "#80CBC4",
	func = "#82AAFF",
	blue = "#64B5F6",
	sky = "#89DDFF",
	red = "#ff5572",
	red2 = "#EF5350",
	err = "#d3423e",

	white = "#ffffff",
	fg = "#bfc7d5",
	folds = "#929ac9",

	cp1 = "#6c739a",
	"#292D3E",
	"#2C2F40",
	"#232635",
	"#313850",
	"#2E3243",
	"#32374C",
}

local M = {}
-- TODO: add more colors and make theme
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

	-- lsp symbols
	func = colors.red,
	property = colors.sky,
	variable = colors.blue,
	method = colors.pink,
	keywords = colors.mauve,
	const = colors.peach,

	bg_context = colors.bg_context,

	-- compliment colors
	cp1 = colors.overlay1,
	cp2 = colors.subtext0,
	cp3 = colors.surface0,
	cp4 = colors.surface1,
	cp5 = colors.surface2,

	-- colors by names
	light_pink = colors.light_pink,
	red = colors.red,
	red2 = colors.red2,
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
