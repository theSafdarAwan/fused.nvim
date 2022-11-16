local M = {}

M.set_harpoon_hl = function(hl, _)
    hl("HarpoonBorder", { link = "TelescopeBorder" })
    hl("HarpoonWindow", { link = "@string" })
end

return M
