local M = {}

local accent_colors = {
	base01 = "#1E1E2E",
	base02 = "#181825",
	base03 = "#232634",
	base04 = "#313244",
	base05 = "#44475a",
	base23 = "#44475a",
	base24 = "#51576d",
	base25 = "#7287FD",
}

local pallet = require("fused.pallets.catppuccin-dark").pallet
pallet = vim.tbl_extend("force", pallet, accent_colors)

M.pallet = pallet

---@function Polish
---@return table of polished color groups
M.polish = function()
	local dark_polish = require("fused.pallets.catppuccin-dark").polish()
	return vim.tbl_deep_extend("force", dark_polish, {
		["nvim-tree.lua"] = {
			NvimTreeNormal = { link = "NormalFloat" },
		},
		["telescope.nvim"] = {
			TelescopeNormal = { bg = M.pallet.base02 },
			TelescopeBorder = { fg = M.pallet.base02, bg = M.pallet.base02 },
			TelescopeSelection = { bg = M.pallet.base03 },
		},
		builtin = {
			NormalFloat = { bg = M.pallet.base02 },
			-- cmp selection is also linked to this
			CursorLine = { bg = M.pallet.base03 },
			FloatBorder = { fg = M.pallet.base25 },
			LineNr = { fg = M.pallet.base24 },
			Pmenu = { fg = M.pallet.base07, bg = M.pallet.base02 },
			-- Popup menu: selected item.
			PmenuSel = { fg = M.pallet.base06, bg = M.pallet.base03 },
			-- Popup menu: scrollbar.
			PmenuSbar = { bg = M.pallet.base03 },
			-- Popup menu: Thumb of the scrollbar.
			PmenuThumb = { bg = M.pallet.base05 },
			MatchParen = { bg = M.pallet.base03 },
			-- windows seperator color
			WinSeparator = { fg = M.pallet.base03 },
			-- Visual mode selection
			Visual = { bg = M.pallet.base03 },
			DiagnosticVirtualTextError = { fg = M.pallet.base08, bg = M.pallet.base03 },
			DiagnosticVirtualTextWarn = { fg = M.pallet.base09, bg = M.pallet.base03 },
			DiagnosticVirtualTextHint = { fg = M.pallet.base10, bg = M.pallet.base03 },
			DiagnosticVirtualTextInfo = { fg = M.pallet.base10, bg = M.pallet.base03 },

			DiagnosticFloatingError = { fg = M.pallet.base08, bg = M.pallet.base03 },
			DiagnosticFloatingWarn = { fg = M.pallet.base09, bg = M.pallet.base03 },
			DiagnosticFloatingHint = { fg = M.pallet.base10, bg = M.pallet.base03 },
			DiagnosticFloatingInfo = { fg = M.pallet.base10, bg = M.pallet.base03 },
		},
	})
end

return M
