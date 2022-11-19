local M = {}

M.load_hl = function(hl, cp)
    hl("IndentBlanklineChar", { fg = cp.cp0 })
    hl("IndentBlanklineSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineSpaceCharBlankline", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextChar", { fg = cp.cp1 })
    hl("IndentBlanklineContextSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextStart", { link = "IndentBlanklineChar" })
end

return M
