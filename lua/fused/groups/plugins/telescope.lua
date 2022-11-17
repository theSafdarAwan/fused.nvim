local M = {}

M.set_telescope_hl = function(hl, cp)
    hl("TelescopeSelection", { bg = cp.dark })
    hl("TelescopeSelectionCaret", { fg = cp.warn })
    hl("TelescopeMultiSelection", { fg = cp.dark })
    hl("TelescopeMatching", { fg = cp.search })
    hl("TelescopePromptPrefix", { fg = cp.lyellow })
    hl("TelescopeBorder", { fg = cp.border })
    hl("TelescopePromptBorder", { link = "TelescopeBorder" })
    hl("TelescopeResultsBorder", { link = "TelescopeBorder" })
    hl("TelescopePreviewBorder", { link = "TelescopeBorder" })
    hl("TelescopeTitle", { fg = cp.wred, bold = true })
    hl("TelescopePromptTitle", { fg = cp.lyellow, bold = true })
    hl("TelescopeResultsTitle", { fg = cp.magenta, bold = true })
    hl("TelescopePreviewTitle", { fg = cp.wred, bold = true })
end
return M
