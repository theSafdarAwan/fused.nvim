local M = {}

M.load_hl = function(cp)
	return {
		HarpoonBorder = { link = "FloatBorder" },
		HarpoonWindow = { fg = cp.base04 },
	}
end

return M
