local colors = {
	color_01 = "#1E2030",
	color_02 = "#24273A",
	color_03 = "#181926",
	color_04 = "#313244",
	color_05 = "#44475a",
	color_06 = "#abb2bf",
	color_07 = "#CDD6F4",
	color_08 = "#EBA0AC",
	color_09 = "#F9E2AF",
	color_10 = "#94E2D5",
	color_11 = "#ED8796",
	color_12 = "#FAB387",
	color_13 = "#73daca",
	color_14 = "#CBA6F7",
	color_15 = "#A6E3A1",
	color_16 = "#FFB86C",
	color_17 = "#89B4FA",
	color_18 = "#B4BEFE",
	color_19 = "#7287FD",
	color_20 = "#8ec07c",
	color_21 = "#d3869b",
	color_22 = "#83a598",
	color_23 = "#8f98FD",
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
		["nvim-tree.lua"] = {
			NvimTreeNormal = { link = "NormalFloat" },
		},
		["telescope.nvim"] = {
			TelescopeNormal = { bg = M.pallet.base03 },
			TelescopeBorder = { fg = M.pallet.base03, bg = M.pallet.base03 },
			TelescopePreviewTitle = { fg = M.pallet.base01, bg = M.pallet.base10, bold = true },
			TelescopePromptPrefix = { fg = M.pallet.base12 },
			TelescopePromptTitle = { fg = M.pallet.base01, bg = M.pallet.base11, bold = true },
			TelescopeResultsTitle = { fg = M.pallet.base16 },
		},
		builtins = {
			-- syntax
			Type = { fg = M.pallet.base09 }, -- (preferred) int, long, char, etc.
			-- editor
			NormalFloat = { bg = M.pallet.base03 },
			FloatBorder = { fg = M.pallet.base19 },
			Pmenu = { fg = M.pallet.base07, bg = M.pallet.base03 },
			-- Popup menu: selected item.
			PmenuSel = { fg = M.pallet.base06, bg = M.pallet.base03 },
			-- Popup menu: scrollbar.
			PmenuSbar = { bg = M.pallet.base02 },
			-- Popup menu: Thumb of the scrollbar.
			PmenuThumb = { bg = M.pallet.base05 },
			Label = { fg = M.pallet.base13 },
			-- windows seperator color
			WinSeparator = { fg = M.pallet.base02 },
			-- tab pages line, not active tab page label
			TabLine = { fg = M.pallet.base06, bg = M.pallet.base02 },
			-- tab pages line, active tab page label
			TabLineSel = { fg = M.pallet.base07, bg = M.pallet.base04 },
		},
		["nvim-treesitter"] = {
			["@property"] = { fg = M.pallet.base13 }, -- similar to `@field`
			["@method"] = { fg = M.pallet.base12 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@function"] = { fg = M.pallet.base08 }, -- function definitions
			["@parameter"] = { fg = M.pallet.base12, italic = utils.italics }, -- parameters of a function
			["@tag.attribute"] = { fg = M.pallet.base13 }, -- XML tag attributes
			["@variable"] = { fg = M.pallet.base17 }, -- builtins variable
			["@variable.builtins"] = { fg = M.pallet.base17 }, -- builtins variable
			-- html
			["@fused_html.doctype"] = { link = "@tag" },
			["@fused_html.paren"] = { fg = "#626880" },
			-- css
			["@fused_css.keyword"] = { fg = M.pallet.base14 },
			["@fused_css.unit"] = { fg = M.pallet.base12 },
			["@property.css"] = { fg = M.pallet.base13 },
			["@fused_css.query"] = { link = "@property.css" }, -- type or class definitions and annotations
			["@fused_css.tag"] = { fg = M.pallet.base17 }, -- css html tag name
			["@fused_css.id"] = { fg = M.pallet.base13 }, -- css id
			["@fused_css.class"] = { fg = M.pallet.base17 }, -- css id
			-- javascript
			["@fused_js.constructor"] = { fg = M.pallet.base14 },
			-- c lang
			["@include"] = { link = "@keyword" },
			["@fused_c.include.path"] = { fg = M.pallet.base15, italic = utils.italics },
		},
		["indent-blankline.nvim"] = {
			IndentBlanklineChar = { fg = M.pallet.base04 },
			IndentBlanklineContextChar = { fg = M.pallet.base05 },
			IndentBlanklineContextStart = { bg = M.pallet.base05 },
		},
	}
end

return M
