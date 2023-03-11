local colors = {
	color_1 = "#1f2430",
	color_2 = "#282E3B",
	color_3 = "#46494f",
	color_4 = "#565b66",
	color_5 = "#686868",
	color_6 = "#697098",
	color_7 = "#c7c7c7",
	color_8 = "#f27983",
	color_9 = "#ffcc66",
	color_10 = "#5ccfe6",
	color_11 = "#ff6666",
	color_12 = "#ffd173",
	color_13 = "#90e1c6",
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
			["@tag.attribute"] = { fg = M.pallete.base09 }, -- XML tag attributes
			["@function"] = { fg = M.pallete.base12 }, -- function definitions
			["@string"] = { fg = M.pallete.base19 }, -- string
			["@variable"] = { fg = M.pallete.base07 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallete.base07 }, -- builtin variable
			["@parameter"] = { fg = M.pallete.base21 }, -- parameters of a function
			["@method"] = { fg = M.pallete.base12 }, -- method definitions
			["@method.call"] = { fg = M.pallete.base12 }, -- similar to `@field`
			["@field"] = { fg = M.pallete.base16 }, -- object and struct fields
			["@boolean"] = { fg = M.pallete.base21 }, -- boolean literals
			["@number"] = { fg = M.pallete.base21 }, -- numeric literals
			["@operator"] = { fg = M.pallete.base14 }, -- numeric literals
			["@constant"] = { fg = M.pallete.base10 }, -- constant identifiers
			["@text.title"] = { fg = M.pallete.base07 }, -- text that is part of a title
			["@tag"] = { fg = M.pallete.base10 }, -- XML tag names
			-- css
			["@property.class"] = { fg = M.pallete.base09 }, -- similar to `@field` for css class etc
			["@type.tag"] = { fg = M.pallete.base13 }, -- type or class definitions and annotations
			["@string.plain"] = { fg = M.pallete.base14, italic = utils.italics }, -- css property, etcc
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
