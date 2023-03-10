local colors = {
	color_1 = "#1f2430",
	color_2 = "#2b2e34",
	color_3 = "#33363c",
	color_4 = "#46494f",
	color_5 = "#565b66",
	color_6 = "#686868",
	color_7 = "#c7c7c7",
	color_8 = "#f27983",
	color_9 = "#ffcc66",
	color_10 = "#90e1c6",
	color_11 = "#ff6666",
	color_12 = "#ffd173",
	color_13 = "#5ccfe6",
	color_14 = "#f29e74",
	color_15 = "#87d96c",
	color_16 = "#80bfff",
	color_17 = "#ed8274",
	color_18 = "#facc6e",
	color_19 = "#d5ff80",
	color_20 = "#f28779",
	color_21 = "#dabafa",
	color_22 = "#95e6cb",
	color_23 = "#ffad66",
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
	local utils = require("fused.utils")
	return {
		builtin = {
			MatchParen = { bg = M.pallete.base02 },
			WinSeparator = { fg = M.pallete.base02 },
		},
		["nvim-treesitter"] = {
			["@comment"] = { fg = "#697098" }, -- line and block comments
			["@tag.attribute"] = { fg = M.pallete.base09 }, -- XML tag attributes
			["@function"] = { fg = M.pallete.base16 }, -- function definitions
			["@string"] = { fg = M.pallete.base15 }, -- string
			["@variable"] = { fg = M.pallete.base07 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallete.base07 }, -- builtin variable
			["@parameter"] = { fg = M.pallete.base17, italic = utils.italics }, -- parameters of a function
			["@property"] = { fg = M.pallete.base16 }, -- similar to `@field`
			["@field"] = { fg = M.pallete.base16 }, -- object and struct fields
			["@number"] = { fg = M.pallete.base17 }, -- numeric literals
			["@property.class"] = { fg = M.pallete.base09, italic = utils.italics }, -- similar to `@field` for css class etc
		},
		["nvim-web-devicons"] = {
			["DevIconcss"] = { fg = M.pallete.base16 },
		},
		["nvim-navic"] = {
			NavicText = { link = "@variable" },
		},
	}
end

return M
