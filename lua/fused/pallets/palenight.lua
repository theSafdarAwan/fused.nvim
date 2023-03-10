--- palenight-mild-contrast theme
local colors = {
	color_1 = "#232635",
	color_2 = "#333748",
	color_3 = "#3c4051",
	color_4 = "#394b70",
	color_5 = "#606475",
	color_6 = "#929ac9",
	color_7 = "#bfc7d5",

	color_8 = "#f07178",
	color_9 = "#FFCB6B",
	color_10 = "#89ffe6",

	color_11 = "#ff5572",
	color_12 = "#ffcb8b",
	color_13 = "#5AD4E6",

	color_14 = "#C792EA",
	color_15 = "#C3E88D",
	color_16 = "#8fb7ff",
	color_17 = "#ffa282",
	color_18 = "#e2b93d",

	color_19 = "#9CCC65",
	color_20 = "#64B5F6",
	color_21 = "#7e57c2",
	color_22 = "#82AAFF",
	color_23 = "#f07178",
}

local M = {}

M.pallete = {
	base01 = colors.color_1,
	base02 = colors.color_2,
	base03 = colors.color_3,
	base04 = colors.color_4,
	base05 = colors.color_5,
	base06 = colors.color_6,
	base07 = colors.color_7,

	base08 = colors.color_8,
	base09 = colors.color_9,
	base10 = colors.color_10,

	base11 = colors.color_11,
	base12 = colors.color_12,
	base13 = colors.color_13,

	base14 = colors.color_14,
	base15 = colors.color_15,
	base16 = colors.color_16,
	base17 = colors.color_17,
	base18 = colors.color_18,

	base19 = colors.color_19,
	base20 = colors.color_20,
	base21 = colors.color_21,
	base22 = colors.color_22,
	base23 = colors.color_23,
}

--- Returns a table which contains tables of highlight groups for plugins.
---@return table
M.polish = function()
	return {
		builtin = {
			["MatchParen"] = { bg = M.pallete.base02 },
			["WinSeparator"] = { fg = M.pallete.base02 },
		},
		["nvim-treesitter"] = {
			["@tag.attribute"] = { fg = M.pallete.base09 }, -- XML tag attributes
			["@function"] = { fg = M.pallete.base17 }, -- function definitions
			["@string"] = { fg = M.pallete.base15 }, -- string
			["@variable"] = { fg = M.pallete.base07 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallete.base07 }, -- builtin variable
			["@parameter"] = { fg = M.pallete.base20, italic = require("fused.utils").italics }, -- parameters of a function
		},
		["nvim-web-devicons"] = {
			["DevIconcss"] = { fg = M.pallete.base16 },
		},
	}
end

return M
