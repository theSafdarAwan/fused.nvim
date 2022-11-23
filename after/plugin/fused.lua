--[[
This is just to solve the problem on norg not showing the colors for the prefixes in the links for markers, dictionary and others
--]]
local vim = vim
local api = vim.api

-- creating a augroup for the fused
local au_fused = api.nvim_create_augroup("fused", { clear = true })

local function neorg_opts()
	local hl = require("fused.utils.lib.higlighter").set_hl
	hl("@conceal", {})
end

api.nvim_create_autocmd({ "FileType" }, {
	group = au_fused,
	pattern = "norg",
	callback = neorg_opts,
})
