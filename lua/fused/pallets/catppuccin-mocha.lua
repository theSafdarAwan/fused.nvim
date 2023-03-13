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

return M
