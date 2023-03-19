--- tokyonight
local colors = {
	color_01 = "#1f2335",
	color_02 = "#292e42",
	color_03 = "#414868",
	color_04 = "#565f89",
	color_05 = "#545c7e",
	color_06 = "#a9b1d6",
	color_07 = "#c0caf5",
	color_08 = "#db4b4b",
	color_09 = "#e0af68",
	color_10 = "#7dcfff",
	color_11 = "#f7768e",
	color_12 = "#ff9e64",
	color_13 = "#73daca",
	color_14 = "#bb9af7",
	color_15 = "#9ece6a",
	color_16 = "#2ac3de",
	color_17 = "#7aa2f7",
	color_18 = "#89ddff",
	color_19 = "#b4f9f8",
	color_20 = "#FFB86C",
	color_21 = "#6183bb",
	color_22 = "#449dab",
	color_23 = "#914c54",
}

local M = {}

M.pallet = {
	base01 = colors.color_01,
	base02 = colors.color_02,
	base03 = colors.color_03,
	base04 = colors.color_04,
	base05 = colors.color_05,
	base06 = colors.color_06,
	base07 = colors.color_07,

	base08 = colors.color_08,
	base09 = colors.color_09,
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
			Pmenu = { fg = M.pallet.base07, bg = M.pallet.base01 },
			-- Popup menu: selected item.
			PmenuSel = { fg = M.pallet.base06, bg = M.pallet.base03 },
			-- Popup menu: scrollbar.
			PmenuSbar = { bg = M.pallet.base02 },
			-- Popup menu: Thumb of the scrollbar.
			PmenuThumb = { bg = M.pallet.base05 },
		},
		["nvim-treesitter"] = {
			-- ["@comment"] = { fg = M.pallet.base19 }, -- line and block comments
			-- ["@function"] = { fg = M.pallet.base12 }, -- function definitions
			-- ["@string"] = { fg = M.pallet.base17 }, -- string
			-- ["@variable"] = { fg = M.pallet.base10 }, -- builtin variable
			-- ["@variable.builtin"] = { fg = M.pallet.base10 }, -- builtin variable
			-- ["@parameter"] = { fg = M.pallet.base10, italic = utils.italics }, -- parameters of a function
			-- ["@property"] = { fg = M.pallet.base10 }, -- similar to `@field`
			-- ["@type"] = { fg = M.pallet.base13 }, -- type or class definitions and annotations
			-- ["@method"] = { fg = M.pallet.base12 }, -- method definitions
			-- ["@method.call"] = { fg = M.pallet.base12 }, -- method calls
			-- ["@field"] = { fg = M.pallet.base10 }, -- object and struct fields
			-- ["@number"] = { fg = M.pallet.base12 }, -- numeric literals
			-- ["@property.class"] = { fg = M.pallet.base09 }, -- similar to `@field` for css class etc
			-- ["@boolean"] = { fg = M.pallet.base14 }, -- boolean literals
			-- ["@operator"] = { link = "@punctuation.delimiter" }, -- numeric literals
			-- ["@text.title"] = { fg = M.pallet.base07 }, -- text that is part of a title
			-- ["@punctuation.delimiter"] = { fg = "#D4D4D4" }, -- delimiters (e.g. `;` / `.` / `,`)
			-- ["@punctuation.special"] = { fg = M.pallet.base17 }, -- special symbols (e.g. `{}` in string interpolation)
			-- ["@string.plain"] = { link = "@css.value" }, -- css property, etcc
			-- ["@keyword"] = { fg = M.pallet.base14 }, -- various keywords
			-- ["@keyword.return"] = { fg = M.pallet.base16 },
			-- -- html
			-- ["@tag"] = { fg = M.pallet.base14 }, -- XML tag names
			-- ["@tag.attribute"] = { fg = M.pallet.base10 }, -- XML tag attributes
			-- ["@html.doctype"] = { link = "@tag" },
			-- ["@html.paren"] = { fg = M.pallet.base05 },
			-- -- css
			-- ["@type.tag"] = { fg = M.pallet.base18 }, -- type or class definitions and annotations
			-- ["@css.unit"] = { link = "@number" }, -- type or class definitions and annotations
			-- ["@css.value"] = { fg = M.pallet.base17 },
			-- ["@css.query"] = { link = "@css.value" }, -- type or class definitions and annotations
			-- -- javascript
			-- ["@js.constructor"] = { fg = M.pallet.base14 },
			-- -- c lang
			-- ["@include"] = { fg = M.pallet.base16 },
			-- ["@include.path"] = { link = "@string" },
		},
		-- ["nvim-web-devicons"] = {
		-- 	["DevIconcss"] = { fg = M.pallet.base14 },
		-- },
		-- ["nvim-navic"] = {
		-- 	NavicText = { link = "@variable" },
		-- },
	}
end

return M
