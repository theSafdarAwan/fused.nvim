local M = {}
local cp = require("fused.palletes").dark_pallete
local hl = require("fused.utils").get

M.set_todo_comments_hl = function()
    hl("@todocomment.error", { fg = cp.red })
    hl("@todocomment.warn", { fg = cp.dyellow })
    hl("@todocomment.info", { fg = cp.green })
    hl("@todocomment.hint", { fg = cp.sky })
    hl("@todocomment.default", { fg = cp.green })
end
return M
