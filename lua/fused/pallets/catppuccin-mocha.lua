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
	return vim.tbl_extend("force", dark_polish, {
		builtin = {
			MatchParen = { bg = M.pallet.base03 },
			WinSeparator = { fg = M.pallet.base02 },
		},
	})
end

return M
