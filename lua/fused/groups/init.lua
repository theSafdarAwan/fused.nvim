--- Loads highlight groups.
local M = {}

local hl = require("fused.utils").set_hl

--- Utils module
---@table exposes utils
local utils = require("fused.utils")

--- All available highlight groups. This is kind of a utility.
---@table available_hl_groups
local available_hl_groups = {}

--- loads higlights for editor builtins highlight groups including editor, syntax and lsp
M.load_builtins_hl = function()
	--- table of colors
	---@table colors
	local colors = utils.colors

	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").get_hl_groups(colors))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").get_hl_groups(colors))

	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").get_hl_groups(colors))
	if utils.polish and utils.polish().builtins then
		hls = vim.tbl_extend("force", hls, utils.polish().builtins)
	end
	available_hl_groups = vim.tbl_extend("force", available_hl_groups, hls)
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

--- loads higlight for the editor plugins highlight groups.
---@param plugins_tbl table plugins table to load group highlights for.
M.load_plugins_hl = function(plugins_tbl)
	--- table of colors
	---@table colors
	local colors = utils.colors

	local plugins_hl_tbls = {}
	for plugin_name, status_ok in pairs(plugins_tbl) do
		if status_ok then
			local fmt_plugin_name = nil
			-- replace the . char with _
			if type(plugin_name) == "string" then
				fmt_plugin_name = require("fused.utils").format_plugin_name(plugin_name)
			end
			local hl_tbl =
				require("fused.groups.plugins." .. fmt_plugin_name or plugin_name).get_hl_groups(colors)
			plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, hl_tbl)
			if utils.polish and utils.polish()[plugin_name] then
				plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, utils.polish()[plugin_name])
			end
		end
	end

	available_hl_groups = vim.tbl_extend("force", available_hl_groups, plugins_hl_tbls)

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl_name = tostring(hl_name)
		-- NOTE> this is to not use italics for plugins highlights only remove italic style from
		-- linked value and only do that if its not a treesitter hl_group
		if hl_val.link and available_hl_groups[hl_val.link] and not string.find(hl_name, "@") then
			hl_val = available_hl_groups[hl_val.link]
			if hl_val and hl_val.italic then
				hl_val.italic = false
			end
		end
		hl(hl_name, hl_val)
	end
end

return M
