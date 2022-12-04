--[[
This is just to solve the problem on norg not showing the colors for the prefixes in the links for markers, dictionary and others
--]]
local vim = vim
local api = vim.api
local opt = vim.opt_local
local b = vim.bo

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

-- set the cursorline for the nvimtree
local function nvim_tree()
	if b.filetype == "NvimTree" then
		opt.cursorline = true
	end
end

api.nvim_create_autocmd({ "BufWinEnter" }, {
	group = au_fused,
	callback = function()
		nvim_tree()
	end,
})
