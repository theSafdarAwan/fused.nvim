--- tokyonight
local colors = {
	color_01 = "#24273A",
	color_02 = "#2f334d",
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

	color_24 = "#1f2335",
	color_25 = "#2496ac",
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
	base24 = colors.color_24,
	base25 = colors.color_25,
	base26 = colors.color_26,
}

--- Returns a table which contains tables of highlight groups for plugins.
---@return table
M.polish = function()
	local utils = require("fused.utils")
	return {
		["nvim-tree.lua"] = {
			NvimTreeNormal = { link = "NormalFloat" },
		},
		["indent-blankline.nvim"] = {
			IndentBlanklineContextChar = { fg = M.pallet.base25 },
		},
		["telescope.nvim"] = {
			TelescopeNormal = { bg = M.pallet.base24 },
			TelescopeBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			TelescopePreviewTitle = { fg = M.pallet.base01, bg = M.pallet.base13, bold = true },
			TelescopePromptPrefix = { fg = M.pallet.base12 },
			TelescopePromptTitle = { fg = M.pallet.base01, bg = M.pallet.base11, bold = true },
			TelescopeResultsTitle = { fg = M.pallet.base09 },
		},
		builtins = {
			NormalFloat = { fg = M.pallet.base06, bg = M.pallet.base24 },
			FloatBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			Pmenu = { fg = M.pallet.base06, bg = M.pallet.base24 },
			PmenuSel = { bg = M.pallet.base03 }, -- Popup menu: selected item.
			PmenuSbar = { bg = M.pallet.base02 }, -- Popup menu: scrollbar.
			PmenuThumb = { bg = M.pallet.base05 }, -- Popup menu: Thumb of the scrollbar.
			MatchParen = { bg = "#3b4261" },
			Label = { fg = M.pallet.base13 },
			WinSeparator = { fg = M.pallet.base02 }, -- windows seperator color
			StatusLine = { fg = M.pallet.base07, bg = M.pallet.base02 }, -- status line of current window
			TabLine = { fg = M.pallet.base06, bg = M.pallet.base02 }, -- tab pages line, not active tab page label
			TabLineSel = { fg = M.pallet.base07, bg = M.pallet.base03 }, -- tab pages line, active tab page label
			Identifier = { fg = M.pallet.base14 }, -- (preferred) any variable name
		},
		["nvim-treesitter"] = {
			["@function"] = { fg = M.pallet.base11 }, -- function definitions
			["@label"] = { fg = M.pallet.base12, bold = true },
			["@string"] = { fg = M.pallet.base15 }, -- string
			["@method"] = { fg = M.pallet.base11 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@variable"] = { fg = M.pallet.base17 }, -- builtins variable
			["@variable.builtins"] = { link = "@variable" }, -- builtins variable
			["@parameter"] = { fg = M.pallet.base12, italic = utils.italics }, -- parameters of a function
			["@boolean"] = { fg = M.pallet.base12 }, -- boolean literals
			["@keyword.return"] = { fg = M.pallet.base11 },
			-- css
			["@fused_css.query"] = { link = "@type" }, -- type or class definitions and annotations
			["@fused_css.tag"] = { fg = M.pallet.base17 }, -- css html tag name
			["@fused_css.id"] = { link = "@type" }, -- css id
			-- javascript
			["@fused_js.constructor"] = { fg = M.pallet.base14 },
			-- c lang
			["@include"] = { fg = M.pallet.base16 },
			["@fused_c.include.path"] = { link = "@string" },
		},
		["nvim-notify"] = {
			NotifyINFOBody = { bg = M.pallet.base24 },
			NotifyWARNBody = { bg = M.pallet.base24 },
			NotifyDEBUGBody = { bg = M.pallet.base24 },
			NotifyERRORBody = { bg = M.pallet.base24 },
			NotifyTRACEBody = { bg = M.pallet.base24 },
			NotifyWARNBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			NotifyINFOBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			NotifyDEBUGBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			NotifyERRORBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
			NotifyTRACEBorder = { fg = M.pallet.base24, bg = M.pallet.base24 },
		},
		["noice.nvim"] = {
			NoiceCmdlinePopupBorder = { fg = M.pallet.base24, bg = M.pallet.base24 }, -- Cmdline popup border
		},
		["neo-minimap"] = {
			NeoMinimapBackground = { link = "FloatBorder" },
		},
		["harpoon"] = {
			HarpoonWindow = { fg = M.pallet.base06, bg = M.pallet.base24 },
			-- TODO: move this to fused_custom and add the styles now
			SlimNormalFloat = { bg = M.pallet.base24 },
		},
	}
end

M.polish_border = function()
	return {}
end

return M
