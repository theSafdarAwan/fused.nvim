local M = {}

M.set_indent_blank_line_hl = function(hl, cp)
    hl("IndentBlanklineChar", { fg = cp.cp4 })
    hl("IndentBlanklineSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineSpaceCharBlankline", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextChar", { fg = cp.cp1 })
    hl("IndentBlanklineContextSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextStart", { link = "IndentBlanklineChar" })
end

return M
