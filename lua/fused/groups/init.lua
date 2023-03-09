--- Loads highlight groups.
local M = {}

local hl = require("fused.utils").set_hl

--- Utils module
---@table exposes utils
local utils = require("fused.utils")

--- table of colors
---@table colors
local colors = utils.colors

--- loads higlights for editor builtin highlight groups including editor, syntax and lsp
M.load_builtin_hl = function()
	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").get_hl_groups(colors))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").get_hl_groups(colors))

	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").get_hl_groups(colors))
	if utils.polish and utils.polish.builtin then
		hls = vim.tbl_extend("force", hls, utils.polish.builtin)
	end
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

--- loads higlight for the editor plugins highlight groups.
---@param plugins_tbl table plugins table to load group highlights for.
M.load_plugins_hl = function(plugins_tbl)
	local plugins_hl_tbls = {}
	for plugin_name, _ in pairs(plugins_tbl) do
		-- replace the . and - chars with _
		if type(plugin_name) == "string" then
			plugin_name = require("fused.utils").format_plugin_name(plugin_name)
		end
		local hl_tbl = require("fused.groups.plugins." .. plugin_name).get_hl_groups(colors)
		plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, hl_tbl)
		if utils.polish and utils.polish[plugin_name] then
			plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, utils.polish[plugin_name])
		end
	end

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl(tostring(hl_name), hl_val)
	end
end
return M
