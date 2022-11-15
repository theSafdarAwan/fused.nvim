local M = {}
local hl = require("fused.utils").get

M.set_harpoon_hl = function()
    hl("HarpoonBorder", { link = "TelescopeBorder" })
    hl("HarpoonWindow", { link = "@string" })
end

return M
