local M = {}

M.set_diffview_hl = function(hl, cp)
    hl("DiffviewFilePanelTitle", { fg = cp.magenta })
end

return M
