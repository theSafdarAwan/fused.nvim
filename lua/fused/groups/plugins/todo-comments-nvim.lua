local M = {}

M.get_hl_groups = function(cp)
	return {
		["@todocomment.error"] = { fg = cp.base11 },
		["@todocomment.warn"] = { fg = cp.base12 },
		["@todocomment.info"] = { fg = cp.base15 },
		["@todocomment.hint"] = { fg = cp.base17 },
		["@todocomment.default"] = { fg = cp.base15 },
	}
end
return M
