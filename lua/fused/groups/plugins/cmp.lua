local M = {}

M.set_cmp_hl = function(hl, cp)
    -- TODO: CmpItemKind%
    hl("CmpItemAbbr", { fg = cp.white })
    hl("CmpItemAbbrDeprecated", { fg = cp.cp2 })
    hl("CmpItemAbbrMatch", { fg = cp.search })
    hl("CmpItemAbbrMatchFuzzy", { fg = cp.warn })
    hl("CmpItemMenu", { fg = cp.cp3 })
    hl("CmpItemKindSnippet", { fg = cp.search })
    -- Item kind
    hl("CmpItemKindText", { link = "@text" })
    hl("CmpItemKindFunction", { link = "@function" })
    hl("CmpItemKindKeyword", { link = "@keyword" })
    hl("CmpItemKindField", { link = "@field" })
    hl("CmpItemKindVariable", { link = "@variable" })
    hl("CmpItemKindEnum", { link = "CmpItemKindText" })
end

return M
