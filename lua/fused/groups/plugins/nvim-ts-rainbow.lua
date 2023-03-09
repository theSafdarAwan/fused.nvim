local M = {}

M.get_hl_groups = function(cp)
	return {
		rainbowcol1 = { fg = cp.base22 },
		rainbowcol2 = { fg = cp.base20 },
		rainbowcol3 = { fg = cp.base23 },
		rainbowcol4 = { fg = cp.base19 },
		rainbowcol5 = { fg = cp.ts_pruple },
		rainbowcol6 = { fg = cp.base22 },
		rainbowcol7 = { fg = cp.base20 },
		rainbowcol8 = { fg = cp.base23 },
	}
end

return M
