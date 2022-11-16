local M = {}

M.set_telescope_hl = function(hl, cp)
    hl("TelescopeSelection", { bg = cp.dark })
    hl("TelescopeSelectionCaret", { fg = cp.yellow })
    hl("TelescopeMultiSelection", { fg = cp.dark })
    hl("TelescopeMatching", { fg = cp.green })
    hl("TelescopePromptPrefix", { fg = cp.lyellow })
    hl("TelescopeBorder", { fg = cp.cp1 })
    hl("TelescopePromptBorder", { fg = cp.cp1 })
    hl("TelescopeResultsBorder", { fg = cp.cp1 })
    hl("TelescopePreviewBorder", { fg = cp.cp1 })
    hl("TelescopeTitle", { fg = cp.wred, bold = true })
    hl("TelescopePromptTitle", { fg = cp.lyellow, bold = true })
    hl("TelescopeResultsTitle", { fg = cp.magenta, bold = true })
    hl("TelescopePreviewTitle", { fg = cp.wred, bold = true })
end
return M
