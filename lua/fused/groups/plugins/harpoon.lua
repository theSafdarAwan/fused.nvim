local M = {}

M.get_hl_groups = function(cp)
	return {
		HarpoonBorder = { link = "FloatBorder" },
		HarpoonWindow = { fg = cp.base04 },
	}
end

return M
