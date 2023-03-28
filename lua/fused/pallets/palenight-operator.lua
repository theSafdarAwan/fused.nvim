--- palenight theme

local colors = {
	color_01 = "#292D3E",
	color_02 = "#333748",
	color_03 = "#3c4051",
	color_04 = "#394b70",
	color_05 = "#606475",
	color_06 = "#929ac9",
	color_07 = "#bfc7d5",

	color_08 = "#f07178",
	color_09 = "#FFCB6B",
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
			PmenuSel = { fg = M.pallet.base03, bg = M.pallet.base09 },
			-- Popup menu: scrollbar.
			PmenuSbar = { bg = M.pallet.base02 },
			-- Popup menu: Thumb of the scrollbar.
			PmenuThumb = { bg = M.pallet.base09 },
			MatchParen = { bg = "#3b4261" },
			Label = { fg = M.pallet.base13 },
			-- windows seperator color
			WinSeparator = { fg = M.pallet.base02 },
		},
		["nvim-treesitter"] = {
			["@comment"] = { fg = "#697098" }, -- line and block comments
			["@tag.attribute"] = { fg = M.pallet.base09, italic = utils.italics }, -- XML tag attributes
			["@function"] = { fg = M.pallet.base16 }, -- function definitions
			["@string"] = { fg = M.pallet.base15, italic = utils.italics }, -- string
			["@variable"] = { fg = M.pallet.base07 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallet.base07 }, -- builtin variable
			["@parameter"] = { fg = M.pallet.base17, italic = utils.italics }, -- parameters of a function
			["@property"] = { fg = "#89DDFF" }, -- similar to `@field`
			["@type"] = { fg = M.pallet.base09 }, -- type or class definitions and annotations
			["@method"] = { fg = M.pallet.base16, italic = utils.italics }, -- method definitions
			["@method.call"] = { fg = M.pallet.base16 }, -- method calls
			["@field"] = { fg = M.pallet.base16 }, -- object and struct fields
			["@number"] = { fg = "#F78C6C" }, -- numeric literals
			["@property.class"] = { fg = M.pallet.base09, italic = utils.italics }, -- similar to `@field` for css class etc
			["@html.doctype"] = { link = "@tag" },
			["@html.paren"] = { link = "@string.plain" },
			["@boolean"] = { fg = "#FF5874", italic = utils.italics }, -- boolean literals
			["@operator"] = { link = "@property" }, -- numeric literals
			["@text.title"] = { fg = M.pallet.base07 }, -- text that is part of a title
			-- css
			["@type.tag"] = { fg = M.pallet.base11 }, -- type or class definitions and annotations
			["@css.query"] = { fg = M.pallet.base10 }, -- type or class definitions and annotations
			["@css.unit"] = { fg = "#FFEB95" }, -- type or class definitions and annotations
			-- c lang
			["@include"] = { link = "@keyword" },
			["@include.path"] = { fg = M.pallet.base15, italic = utils.italics },
			-- javascript
			["@js.constructor"] = { fg = M.pallet.base16 },
		},
		["nvim-web-devicons"] = {
			["DevIconcss"] = { fg = M.pallet.base16 },
		},
	}
end

return M
