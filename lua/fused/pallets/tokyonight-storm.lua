--- tokyonight
local colors = {
	-- 18 base colors required by theme
	bg = "#21273A", -- background color.
	popup_bg = "#2f334d", -- floating windows, etc.
	color_01 = "#414868",
	color_02 = "#565f89",
	color_03 = "#545c7e",
	color_04 = "#a9b1d6", -- used for text, etc.
	color_05 = "#c0caf5", -- used for highlighting fg of Popup menus, etc.
	color_06 = "#db4b4b", -- used for diagnostic Error, etc.
	color_07 = "#e0af68", -- used for diagnostic Warn, etc.
	color_08 = "#7dcfff", -- used for diagnostic Hint, git diff added, property, etc.
	color_09 = "#f7768e", -- used for git diff removed, func names, etc.
	color_10 = "#ff9e64", -- used for parameter, boolean, numbers, etc.
	color_11 = "#73daca", -- used for diagnostic Info, Label, Class, etc.
	color_12 = "#bb9af7", -- used for keywords, etc.
	color_13 = "#9ece6a", -- used for search match including Telescope, cmp, etc.
	color_14 = "#2ac3de", -- used for border, etc.
	color_15 = "#7aa2f7", -- used for variable names, etc.
	color_16 = "#FFB86C", -- highlight builtin, variables, etc.
	-- extra colors for polishing the theme.
	color_17 = "#b4f9f8",
	color_18 = "#89ddff",
	color_19 = "#1f2335",
	color_20 = "#2196ac",
}

local M = {}

M.pallet = {
	bg = colors.bg,
	popup_bg = colors.popup_bg,
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
			IndentBlanklineContextChar = { fg = M.pallet.base20 },
		},
		["telescope.nvim"] = {
			TelescopeNormal = { bg = M.pallet.base19 },
			TelescopeBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			TelescopePreviewTitle = { fg = M.pallet.bg, bg = M.pallet.base11, bold = true },
			TelescopePromptPrefix = { fg = M.pallet.base10 },
			TelescopePromptTitle = { fg = M.pallet.bg, bg = M.pallet.base09, bold = true },
			TelescopeResultsTitle = { fg = M.pallet.base07 },
		},
		-- TODO: move from this to use individual groups like editor, lsp and syntax.
		builtins = {
			NormalFloat = { fg = M.pallet.base04, bg = M.pallet.base19 },
			FloatBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			Pmenu = { fg = M.pallet.base04, bg = M.pallet.base19 },
			PmenuSel = { bg = M.pallet.base01 }, -- Popup menu: selected item.
			PmenuSbar = { bg = M.pallet.popup_bg }, -- Popup menu: scrollbar.
			PmenuThumb = { bg = M.pallet.base03 }, -- Popup menu: Thumb of the scrollbar.
			MatchParen = { bg = "#3b4261" },
			Label = { fg = M.pallet.base11 },
			WinSeparator = { fg = M.pallet.popup_bg }, -- windows seperator color
			StatusLine = { fg = M.pallet.base05, bg = M.pallet.popup_bg }, -- status line of current window
			TabLine = { fg = M.pallet.base04, bg = M.pallet.popup_bg }, -- tab pages line, not active tab page label
			TabLineSel = { fg = M.pallet.base05, bg = M.pallet.base01 }, -- tab pages line, active tab page label
			Identifier = { fg = M.pallet.base12 }, -- (preferred) any variable name
		},
		["nvim-treesitter"] = {
			["@function"] = { fg = M.pallet.base09 }, -- function definitions
			["@label"] = { fg = M.pallet.base10, bold = true },
			["@string"] = { fg = M.pallet.base13 }, -- string
			["@method"] = { fg = M.pallet.base09 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@variable"] = { fg = M.pallet.base15 }, -- builtins variable
			["@variable.builtins"] = { link = "@variable" }, -- builtins variable
			["@parameter"] = { fg = M.pallet.base10, italic = utils.italics }, -- parameters of a function
			["@boolean"] = { fg = M.pallet.base10 }, -- boolean literals
			["@keyword.return"] = { fg = M.pallet.base09 },
			-- css
			["@fused_css.query"] = { link = "@type" }, -- type or class definitions and annotations
			["@fused_css.tag"] = { fg = M.pallet.base15 }, -- css html tag name
			["@fused_css.id"] = { link = "@type" }, -- css id
			-- javascript
			["@fused_js.constructor"] = { fg = M.pallet.base12 },
			-- c lang
			["@include"] = { fg = M.pallet.base14 },
			["@fused_c.include.path"] = { link = "@string" },
		},
		["nvim-notify"] = {
			NotifyINFOBody = { bg = M.pallet.base19 },
			NotifyWARNBody = { bg = M.pallet.base19 },
			NotifyDEBUGBody = { bg = M.pallet.base19 },
			NotifyERRORBody = { bg = M.pallet.base19 },
			NotifyTRACEBody = { bg = M.pallet.base19 },
			NotifyWARNBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			NotifyINFOBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			NotifyDEBUGBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			NotifyERRORBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
			NotifyTRACEBorder = { fg = M.pallet.base19, bg = M.pallet.base19 },
		},
		["noice.nvim"] = {
			NoiceCmdlinePopupBorder = { fg = M.pallet.base19, bg = M.pallet.base19 }, -- Cmdline popup border
		},
		["neo-minimap"] = {
			NeoMinimapBackground = { link = "FloatBorder" },
		},
		["harpoon"] = {
			HarpoonWindow = { fg = M.pallet.base04, bg = M.pallet.base19 },
		},
	}
end

M.style_border = function()
	return {}
end

return M
