-- TODO: add the remaining highlights
local M = {}

M.get_hl_groups = function(cp)
	return {
		RenamerNormal = { fg = cp.err },
		RenamerBorder = { fg = cp.base04 },
		RenamerTitle = { fg = cp.warn },
	}
end
return M
