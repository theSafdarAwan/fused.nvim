--- Loads highlight groups.
local M = {}

local utils = require("fused.utils")
local hl = utils.set_hl

--- All available highlight groups. This is kind of a utility.
---@table available_hl_groups
local available_hl_groups = {}

--- plugin names that already got a warning, so it is only shown once.
local warned = {}

--- loads higlights for editor builtins highlight groups including editor, syntax and lsp
M.load_builtins_hl = function()
	--- table of colors
	---@table colors
	local colors = utils.colors

	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").get_hl_groups(colors))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").get_hl_groups(colors))
	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").get_hl_groups(colors))
	local polished = utils.polish and utils.polish() or {}
	if polished.builtins then
		hls = vim.tbl_extend("force", hls, polished.builtins)
	end
	available_hl_groups = vim.tbl_extend("force", available_hl_groups, hls)
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

--- loads higlight for the editor plugins highlight groups.
---@param plugins_tbl table plugins table to load group highlights for.
M.load_plugins_hl = function(plugins_tbl)
	if type(plugins_tbl) ~= "table" then
		return
	end
	--- table of colors
	---@table colors
	local colors = utils.colors
	if not colors then
		return
	end
	local polished = utils.polish and utils.polish() or {}

	local plugins_hl_tbls = {}
	for plugin_name, status_ok in pairs(plugins_tbl) do
		if status_ok then
			plugin_name = tostring(plugin_name)
			local module = "fused.groups.plugins." .. utils.format_plugin_name(plugin_name)
			local ok, plugin_hl = pcall(require, module)
			if ok and type(plugin_hl) == "table" and plugin_hl.get_hl_groups then
				plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, plugin_hl.get_hl_groups(colors))
				if polished[plugin_name] then
					plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, polished[plugin_name])
				end
			elseif not warned[plugin_name] then
				warned[plugin_name] = true
				local not_found = not ok and tostring(plugin_hl):find("not found", 1, true)
				vim.notify(
					not_found and ("fused.nvim: there are no highlight groups for the plugin %q"):format(plugin_name)
						or ("fused.nvim: failed to load the groups for %q: %s"):format(plugin_name, tostring(plugin_hl)),
					vim.log.levels.WARN
				)
			end
		end
	end

	-- add the new capture names (@variable.member, @markup.strong, ...) next to the old ones.
	require("fused.groups.aliases").expand(plugins_hl_tbls)

	available_hl_groups = vim.tbl_extend("force", available_hl_groups, plugins_hl_tbls)

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl_name = tostring(hl_name)
		-- NOTE> this is to not use italics for plugins highlights only remove italic style from
		-- linked value and only do that if its not a treesitter hl_group. A copy is used so the
		-- group the plugin links to keeps its italics.
		if hl_val.link and available_hl_groups[hl_val.link] and not string.find(hl_name, "@", 1, true) then
			local linked = vim.deepcopy(available_hl_groups[hl_val.link])
			if linked.italic then
				linked.italic = false
			end
			hl_val = linked
		end
		hl(hl_name, hl_val)
	end
end

return M
