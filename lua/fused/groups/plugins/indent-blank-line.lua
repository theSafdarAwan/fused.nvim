local M = {}
local cp = require("fused.palletes").dark_pallete
local hl = require("fused.utils").get

M.set_indent_blank_line_hl = function()
    --> (IndentBlankline)
    hl("IndentBlanklineChar", { fg = cp.cp2 })
    hl("IndentBlanklineSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineSpaceCharBlankline", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextChar", { fg = cp.cp3 })
    hl("IndentBlanklineContextSpaceChar", { link = "IndentBlanklineChar" })
    hl("IndentBlanklineContextStart", { link = "IndentBlanklineChar" })
end

return M
