local M = {}
M.set_custom_hl = function(hl, cp)
    hl("DamianConway", { bg = cp.color_2 }) -- this is a custom highlight group
end
return M
