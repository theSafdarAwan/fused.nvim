local M = {}

M.load_hl = function(cp)
	return {
		rainbowcol1 = { fg = cp.ts_yellow },
		rainbowcol2 = { fg = cp.ts_deep_yellow },
		rainbowcol3 = { fg = cp.ts_cyan },
		rainbowcol4 = { fg = cp.ts_aqua },
		rainbowcol5 = { fg = cp.ts_pruple },
		rainbowcol6 = { fg = cp.ts_yellow },
		rainbowcol7 = { fg = cp.ts_deep_yellow },
		rainbowcol8 = { fg = cp.ts_cyan },
	}
end

return M
