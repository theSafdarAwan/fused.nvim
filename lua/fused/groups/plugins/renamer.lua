-- TODO: add the remaining highlights
local M = {}

M.load_hl = function(hl, cp)
	hl("RenamerNormal", { fg = cp.err,})
	hl("RenamerBorder", { fg = cp.border })
	hl("RenamerTitle", { fg = cp.warn })
end
return M
