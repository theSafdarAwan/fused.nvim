--- vscode Dark+
local colors = {
	color_1 = "#1E1E1E",
	color_2 = "#252526",
	color_3 = "#252526",
	color_4 = "#2D2D2D",
	color_5 = "#808080",
	color_6 = "#AEAFAD",
	color_7 = "#BBBBBB",

	color_8 = "#FB0101",
	color_9 = "#e2c08d",
	color_10 = "#9CDCFE",

	color_11 = "#e4676b",
	color_12 = "#DCDCAA",
	color_13 = "#4EC9B0",

	color_14 = "#569CD6",
	color_15 = "#81b88b",
	color_16 = "#C586C0",
	color_17 = "#CE9178",
	color_18 = "#D7BA7D",

	color_19 = "#6A9955",
	color_20 = "#569CD6",
	color_21 = "#7e57c2",
	color_22 = "#8db9e2",
	color_23 = "#c74e39",
}

local M = {}

M.pallet = {
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
			MatchParen = { bg = M.pallet.base02 },
			WinSeparator = { fg = M.pallet.base02 },
		},
		["nvim-treesitter"] = {
			["@comment"] = { fg = M.pallet.base19 }, -- line and block comments
			["@function"] = { fg = M.pallet.base12 }, -- function definitions
			["@string"] = { fg = M.pallet.base17 }, -- string
			["@variable"] = { fg = M.pallet.base10 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallet.base10 }, -- builtin variable
			["@parameter"] = { fg = M.pallet.base10, italic = utils.italics }, -- parameters of a function
			["@property"] = { fg = M.pallet.base10 }, -- similar to `@field`
			["@type"] = { fg = M.pallet.base13 }, -- type or class definitions and annotations
			["@method"] = { fg = M.pallet.base12 }, -- method definitions
			["@method.call"] = { fg = M.pallet.base12 }, -- method calls
			["@field"] = { fg = M.pallet.base10 }, -- object and struct fields
			["@number"] = { fg = M.pallet.base12 }, -- numeric literals
			["@property.class"] = { fg = M.pallet.base09 }, -- similar to `@field` for css class etc
			["@boolean"] = { fg = M.pallet.base14 }, -- boolean literals
			["@operator"] = { link = "@punctuation.delimiter" }, -- numeric literals
			["@text.title"] = { fg = M.pallet.base07 }, -- text that is part of a title
			["@punctuation.delimiter"] = { fg = "#D4D4D4" }, -- delimiters (e.g. `;` / `.` / `,`)
			["@punctuation.special"] = { fg = M.pallet.base17 }, -- special symbols (e.g. `{}` in string interpolation)
			["@string.plain"] = { link = "@css.value" }, -- css property, etcc
			["@keyword"] = { fg = M.pallet.base14 }, -- various keywords
			["@keyword.return"] = { fg = M.pallet.base16 },
			-- html
			["@tag"] = { fg = M.pallet.base14 }, -- XML tag names
			["@tag.attribute"] = { fg = M.pallet.base10 }, -- XML tag attributes
			["@html.doctype"] = { link = "@tag" },
			["@html.paren"] = { fg = M.pallet.base05 },
			-- css
			["@type.tag"] = { fg = M.pallet.base18 }, -- type or class definitions and annotations
			["@css.unit"] = { link = "@number" }, -- type or class definitions and annotations
			["@css.value"] = { fg = M.pallet.base17 },
			["@css.query"] = { link = "@css.value" }, -- type or class definitions and annotations
			-- c lang
			["@include"] = { link = "@keyword" },
			["@include.path"] = { fg = M.pallet.base15 },
		},
		["nvim-web-devicons"] = {
			["DevIconcss"] = { fg = M.pallet.base16 },
		},
		["nvim-navic"] = {
			NavicText = { link = "@variable" },
		},
	}
end

return M
