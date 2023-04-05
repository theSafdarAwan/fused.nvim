-- TODO: add the remaining highlights
local M = {}

M.load_hl = function(cp)
	return {
		RenamerNormal = { fg = cp.base09 },
		RenamerBorder = { fg = cp.base02 },
		RenamerTitle = { fg = cp.base07 },
	}
end
return M
