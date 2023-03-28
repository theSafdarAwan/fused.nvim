local M = {}

local accent_colors = {
	base01 = "#1E1E2E",
	base02 = "#24273A",
	base03 = "#313244",
	base04 = "#363A4F",
	base05 = "#44475a",
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
		},
		builtin = {
			NormalFloat = { bg = M.pallet.base02 },
			FloatBorder = { fg = M.pallet.base25 },
			Pmenu = { fg = M.pallet.base07, bg = M.pallet.base02 },
			-- Popup menu: selected item.
			PmenuSel = { fg = M.pallet.base06, bg = M.pallet.base02 },
			-- Popup menu: scrollbar.
			PmenuSbar = { bg = M.pallet.base02 },
			-- Popup menu: Thumb of the scrollbar.
			PmenuThumb = { bg = M.pallet.base05 },
			MatchParen = { bg = M.pallet.base02 },
			-- windows seperator color
			WinSeparator = { fg = M.pallet.base02 },
		},
	})
end

return M
