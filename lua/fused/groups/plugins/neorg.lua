local M = {}

M.set_neorg_hl = function(hl, cp)
    local norg_colors = {
        ["h1"] = cp.property,
        ["h2"] = cp.magenta,
        ["h3"] = cp.sky_blue,
        ["h4"] = cp.string,
        ["h6"] = cp.teal,
        ["h5"] = cp.magenta,
        ["qc_fg"] = cp.variable,
        ["qc_bg"] = cp.bg_windows,
        ["desc"] = cp.string,
        ["superscript"] = cp.warn,
        ["subscript"] = cp.wmagenta,
        ["code_block"] = cp.cp6,
    }

    local heading_level = {
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
    }

    for k, v in ipairs(heading_level) do
        -- headings
        local hg = "@neorg.headings." .. v .. ".title"
        local hgp = "@neorg.headings." .. v .. ".prefix"
        local hc = norg_colors["h" .. tostring(k)]
        hl(hg, { fg = hc })
        hl(hgp, { link = hg })

        -- headings links location
        local ll = "@neorg.links.location.heading." .. v
        hl(ll, { fg = hc, underdotted = true })
    end

    hl("@neorg.links.description", { fg = norg_colors["desc"] })
    hl("@neorg.markup.superscript", { fg = norg_colors["superscript"] })
    hl("@neorg.markup.subscript", { fg = norg_colors["subscript"] })
    hl(
        "@neorg.quotes.1.content",
        { fg = norg_colors["qc_fg"], bg = norg_colors["qc_bg"], italic = true }
    )
    hl(
        "@neorg.tags.ranged_verbatim.code_block",
        { bg = norg_colors["code_block"] }
    )
end

return M
