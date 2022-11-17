local M = {}

M.set_lsp_hl = function(hl, cp)
    hl("LspReferenceText", { bg = cp.wred, bold = true }) -- used for highlighting "text" references
    hl("LspReferenceRead", { bg = cp.wred, bold = true }) -- used for highlighting "read" references
    hl("LspReferenceWrite", { bg = cp.wred, bold = true }) -- used for highlighting "write" references

    hl("DiagnosticVirtualTextError", { fg = cp.err_sev, bg = cp.bg_windows })
    hl("DiagnosticVirtualTextWarn", { fg = cp.warn, bg = cp.bg_windows })
    hl("DiagnosticVirtualTextHint", { fg = cp.blue, bg = cp.bg_windows })
    hl("DiagnosticVirtualTextInfo", { fg = cp.property, bg = cp.bg_windows })

    hl("DiagnosticFloatingError", { fg = cp.err_sev, bg = cp.bg_windows })
    hl("DiagnosticFloatingWarn", { fg = cp.warn, bg = cp.bg_windows })
    hl("DiagnosticFloatingHint", { fg = cp.blue, bg = cp.bg_windows })
    hl("DiagnosticFloatingInfo", { fg = cp.property, bg = cp.bg_windows })

    hl("DiagnosticSignError", { fg = cp.err_sev })
    hl("DiagnosticSignWarn", { fg = cp.warn })
    hl("DiagnosticSignHint", { fg = cp.blue })
    hl("DiagnosticSignInfo", { link = "@field" })

    hl(
        "DiagnosticUnderlineError",
        -- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineWarn",
        -- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineInfo",
        -- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineHint",
        -- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }
        { underline = true }
    )
end

return M
