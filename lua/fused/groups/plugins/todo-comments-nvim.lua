local M = {}

M.get_hl_groups = function(cp)
	return {
		["@todocomment.error"] = { fg = cp.base09 },
		["@todocomment.warn"] = { fg = cp.base10 },
		["@todocomment.info"] = { fg = cp.base13 },
		["@todocomment.hint"] = { fg = cp.base15 },
		["@todocomment.default"] = { fg = cp.base13 },
	}
end
return M
