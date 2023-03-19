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
			MatchParen = { bg = "#3b4261" },
			Label = { fg = M.pallet.base13 },
			-- windows seperator color
			WinSeparator = { fg = M.pallet.base02 },
		},
		["nvim-treesitter"] = {
			["@function"] = { fg = M.pallet.base11 }, -- function definitions
			["@label"] = { fg = M.pallet.base12, bold = true },
			["@string"] = { fg = M.pallet.base15 }, -- string
			["@method"] = { fg = M.pallet.base11 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@variable"] = { fg = M.pallet.base17 }, -- builtin variable
			["@variable.builtin"] = { link = "@variable" }, -- builtin variable
			["@parameter"] = { fg = M.pallet.base12, italic = utils.italics }, -- parameters of a function
			["@boolean"] = { fg = M.pallet.base12 }, -- boolean literals
			["@keyword.return"] = { fg = M.pallet.base11 },
			-- css
			["@css.query"] = { link = "@type" }, -- type or class definitions and annotations
			-- javascript
			["@js.constructor"] = { fg = M.pallet.base14 },
			-- c lang
			["@include"] = { fg = M.pallet.base16 },
			["@include.path"] = { link = "@string" },
		},
	}
end

return M
