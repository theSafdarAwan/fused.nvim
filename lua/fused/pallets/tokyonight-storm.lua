--- tokyonight
local theme_colors = {
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
	color_21 = "#3b4261",
}

local M = {}

M.pallet = {
	bg = theme_colors.bg,
	popup_bg = theme_colors.popup_bg,
	base01 = theme_colors.color_01,
	base02 = theme_colors.color_02,
	base03 = theme_colors.color_03,
	base04 = theme_colors.color_04,
	base05 = theme_colors.color_05,

	base06 = theme_colors.color_06,
	base07 = theme_colors.color_07,
	base08 = theme_colors.color_08,

	base09 = theme_colors.color_09,
	base10 = theme_colors.color_10,
	base11 = theme_colors.color_11,

	base12 = theme_colors.color_12,
	base13 = theme_colors.color_13,
	base14 = theme_colors.color_14,
	base15 = theme_colors.color_15,
	base16 = theme_colors.color_16,

	base17 = theme_colors.color_17,
	base18 = theme_colors.color_18,
	base19 = theme_colors.color_19,
	base20 = theme_colors.color_20,
	base21 = theme_colors.color_21,
}

--- Returns a table which contains tables of highlight groups for plugins.
---@return table
M.polish = function(colors)
	local utils = require("fused.utils")
	return {
		["nvim-tree.lua"] = {
			NvimTreeNormal = { link = "NormalFloat" },
		},
		["indent-blankline.nvim"] = {
			IndentBlanklineContextChar = { fg = colors.base20 },
		},
		["telescope.nvim"] = {
			TelescopeNormal = { bg = colors.base19 },
			TelescopePromptPrefix = { fg = colors.base10 },
			TelescopePreviewTitle = { fg = colors.base11, bold = true },
			TelescopePromptTitle = { fg = colors.base09, bold = true },
			TelescopeResultsTitle = { fg = colors.base07 },
		},
		editor = {
			NormalFloat = { fg = colors.base04, bg = colors.base19 },
			Pmenu = { fg = colors.base04, bg = colors.base19 },
			PmenuSel = { fg = colors.base04, bg = colors.base01 }, -- Popup menu: selected item.
			PmenuSbar = { bg = colors.popup_bg }, -- Popup menu: scrollbar.
			PmenuThumb = { bg = colors.base03 }, -- Popup menu: Thumb of the scrollbar.
			MatchParen = { bg = colors.base21 },
			WinSeparator = { fg = colors.popup_bg }, -- windows seperator color
			StatusLine = { fg = colors.base05, bg = colors.popup_bg }, -- status line of current window
			TabLine = { fg = colors.base04, bg = colors.popup_bg }, -- tab pages line, not active tab page label
			TabLineSel = { fg = colors.base05, bg = colors.base01 }, -- tab pages line, active tab page label
		},
		syntax = {
			Label = { fg = colors.base11 },
			Identifier = { fg = colors.base12 }, -- (preferred) any variable name
		},
		["nvim-treesitter"] = {
			["@function"] = { fg = colors.base09 }, -- function definitions
			["@label"] = { fg = colors.base10, bold = true },
			["@string"] = { fg = colors.base13 }, -- string
			["@method"] = { fg = colors.base09 }, -- method definitions
			["@method.call"] = { link = "@method" }, -- method calls
			["@variable"] = { fg = colors.base15 }, -- builtins variable
			["@variable.builtins"] = { link = "@variable" }, -- builtins variable
			["@parameter"] = { fg = colors.base10, italic = utils.italics }, -- parameters of a function
			["@boolean"] = { fg = colors.base10 }, -- boolean literals
			["@keyword.return"] = { fg = colors.base09 },
			-- css
			["@fused_css.query"] = { link = "@type" }, -- type or class definitions and annotations
			["@fused_css.tag"] = { fg = colors.base15 }, -- css html tag name
			["@fused_css.id"] = { link = "@type" }, -- css id
			-- javascript
			["@fused_js.constructor"] = { fg = colors.base12 },
			-- c lang
			["@include"] = { fg = colors.base14 },
			["@fused_c.include.path"] = { link = "@string" },
		},
		["nvim-notify"] = {
			NotifyINFOBody = { bg = colors.base19 },
			NotifyWARNBody = { bg = colors.base19 },
			NotifyDEBUGBody = { bg = colors.base19 },
			NotifyERRORBody = { bg = colors.base19 },
			NotifyTRACEBody = { bg = colors.base19 },
		},
	}
end

M.style = function(colors)
	return {
		slim = {
			["nvim-notify"] = {
				NotifyWARNBorder = { fg = colors.base19, bg = colors.base19 },
				NotifyINFOBorder = { fg = colors.base19, bg = colors.base19 },
				NotifyDEBUGBorder = { fg = colors.base19, bg = colors.base19 },
				NotifyERRORBorder = { fg = colors.base19, bg = colors.base19 },
				NotifyTRACEBorder = { fg = colors.base19, bg = colors.base19 },
			},
			["neo-minimap"] = {
				NeoMinimapBackground = { link = "FloatBorder" },
			},
			["telescope.nvim"] = {
				TelescopeBorder = { fg = colors.base19, bg = colors.base19 },
				TelescopePreviewTitle = { fg = colors.bg, bg = colors.base11, bold = true },
				TelescopePromptTitle = { fg = colors.bg, bg = colors.base09, bold = true },
			},
			["noice.nvim"] = {
				NoiceCmdlinePopupBorder = { fg = colors.base19, bg = colors.base19 }, -- Cmdline popup border
			},
			["harpoon"] = {
				HarpoonWindow = { fg = colors.base04, bg = colors.base19 },
			},
			editor = {
				FloatBorder = { fg = colors.base19, bg = colors.base19 },
			},
		},
	}
end

return M
