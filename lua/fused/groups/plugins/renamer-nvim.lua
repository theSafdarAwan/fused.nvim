-- TODO: add the remaining highlights
local M = {}

M.get_hl_groups = function(cp)
	return {
		RenamerNormal = { fg = cp.base11 },
		RenamerBorder = { fg = cp.base04 },
		RenamerTitle = { fg = cp.base09 },
	}
end
return M
