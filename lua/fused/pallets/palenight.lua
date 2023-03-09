-- this is palenight-mild-contrast theme
local colors = {

	violet = "#7e57c2",
	mauve = "#d1aaff",
	dark_purple = "#b383d2",
	keyword = "#C792EA", -- purple
	git_mod = "#e2b93d",
	yellow = "#ffcb8b",
	const = "#FFCB6B",
	string = "#C3E88D",
	number = "#F78C6C",
	green = "#9CCC65",
	regex = "#80CBC4",
	func = "#82AAFF",
	nord_blue = "#8fb7ff",
	blue = "#64B5F6",
	sky = "#89DDFF",
	teal = "#89ffe6",
	orange = "#ffa282",
	-- red = "#ff5572",
	red = "#ff5572",
	red2 = "#EF5350",
	-- red2 = "#f07178",
	err = "#d3423e",

	white = "#ffffff",
	text = "#bfc7d5",
	folds = "#929ac9",

	dark_1 = "#2C2F40",
	dark_2 = "#333748",
	bg = "#252931",

	shadow_1 = "#2f3344",
	shadow_2 = "#2E3243",
	shadow_3 = "#313850",

	cp1 = "#4c5374",
	cp2 = "#606475",
	cp3 = "#232738",
	cp4 = "#32374C",
	cp5 = "#3c4051",
}

local M = {}
M.pallete = {
	base03 = colors.dark_1,
	base02 = colors.dark_2,
	base01 = colors.bg,
	dark = colors.shadow_1,
	white = colors.white,
	text = colors.text,
	string = colors.string,
	border = colors.violet,

	-- colors most commonly used for Lsp errors and warnings and other lsp plugins
	warn = colors.yellow,
	err = colors.red2,
	err_sev = colors.err,

	-- editor colors
	folds = colors.shadow_3,
	search = colors.green,

	-- lsp symbols
	func = colors.func,
	property = colors.sky,
	variable = colors.nord_blue,
	method = colors.func,
	keywords = colors.keyword,
	const = colors.const,

	bg_context = colors.folds,

	-- compliment colors
	cp1 = colors.cp1,
	cp2 = colors.cp2,
	cp3 = colors.cp3,
	cp4 = colors.cp4,
	cp5 = colors.cp5,

	-- colors by names
	light_pink = colors.mauve,
	red = colors.red,
	red2 = colors.red2,
	magenta = colors.mauve,
	magenta2 = colors.dark_purple,
	teal = colors.teal,
	orange = colors.orange,
	blue = colors.sky,

	-- brackets pairs colors
	ts_aqua = colors.nord_blue,
	ts_deep_yellow = colors.git_mod,
	ts_purple = colors.violet,
	ts_yellow = colors.yellow,
	ts_cyan = colors.sky,
}

return M
