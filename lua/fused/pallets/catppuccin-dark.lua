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
			TelescopePreviewTitle = { fg = M.pallet.base01, bg = M.pallet.base13, bold = true },
			TelescopePromptPrefix = { fg = M.pallet.base12 },
			TelescopePromptTitle = { fg = M.pallet.base01, bg = M.pallet.base11, bold = true },
			TelescopeResultsTitle = { fg = M.pallet.base09 },
		},
		builtin = {
			NormalFloat = { bg = M.pallet.base03 },
			FloatBorder = { fg = M.pallet.base25 },
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
		},
		["nvim-treesitter"] = {
			["@method"] = { fg = M.pallet.base12 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@function"] = { fg = M.pallet.base08 }, -- function definitions
			["@tag.attribute"] = { fg = M.pallet.base09, italic = utils.italics }, -- XML tag attributes
			["@variable"] = { fg = M.pallet.base17 }, -- builtin variable
			["@variable.builtin"] = { fg = M.pallet.base17 }, -- builtin variable
			-- html
			["@html.doctype"] = { link = "@tag" },
			-- css
			["@css.query"] = { fg = M.pallet.base13 },
			["@css.keyword"] = { fg = M.pallet.base14 },
			["@css.unit"] = { fg = M.pallet.base12 },
			-- javascript
			["@js.constructor"] = { fg = M.pallet.base14 },
			-- c lang
			["@include"] = { link = "@keyword" },
			["@include.path"] = { fg = M.pallet.base15, italic = utils.italics },
		},
	}
end

return M
