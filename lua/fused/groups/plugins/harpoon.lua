local M = {}

M.load_hl = function(hl, _)
	hl("HarpoonBorder", { link = "TelescopeBorder" })
	hl("HarpoonWindow", { link = "@string" })
end

return M
