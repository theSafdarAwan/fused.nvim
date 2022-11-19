local M = {}

M.load_hl = function(hl, cp)
    hl("DiffviewFilePanelTitle", { fg = cp.magenta })
end

return M
