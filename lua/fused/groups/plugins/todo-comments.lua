local M = {}

M.set_todo_comments_hl = function(hl, cp)
    hl("@todocomment.error", { fg = cp.red })
    hl("@todocomment.warn", { fg = cp.dyellow })
    hl("@todocomment.info", { fg = cp.green })
    hl("@todocomment.hint", { fg = cp.sky_blue })
    hl("@todocomment.default", { fg = cp.green })
end
return M
