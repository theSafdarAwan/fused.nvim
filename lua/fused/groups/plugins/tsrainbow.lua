local M = {}

M.load_hl = function(hl, cp)
    hl("rainbowcol1", { fg = cp.ts_yellow })
    hl("rainbowcol2", { fg = cp.ts_deep_yellow })
    hl("rainbowcol3", { fg = cp.ts_cyan })
    hl("rainbowcol4", { fg = cp.ts_aqua })
    hl("rainbowcol5", { fg = cp.ts_pruple })
end

return M
