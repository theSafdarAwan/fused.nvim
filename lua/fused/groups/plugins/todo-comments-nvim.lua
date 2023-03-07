local M = {}

M.get_hl_groups = function(cp)
	return {
		["@todocomment.error"] = { fg = cp.err },
		["@todocomment.warn"] = { fg = cp.orange },
		["@todocomment.info"] = { fg = cp.search },
		["@todocomment.hint"] = { fg = cp.variable },
		["@todocomment.default"] = { fg = cp.search },
	}
end
return M
