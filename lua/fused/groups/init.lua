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
	local builtins = require("fused.groups.builtins").load_builtins(colors)
	if utils.polish then
		local groups_tbl = {
			"editor",
			"syntax",
			"lsp",
		}
		-- TODO: idiot you are requiring polish function every where.
		local polished = utils.polish(colors)
		for _, group in ipairs(groups_tbl) do
			builtins[group] = vim.tbl_deep_extend("force", builtins[group], polished[group] or {})
		end
	end
	-- add the builtin group tables to the available_hl_groups
	available_hl_groups = vim.tbl_deep_extend("force", available_hl_groups, builtins or {})

	for _, hl_tbl in pairs(builtins) do
		for hl_name, hl_val in pairs(hl_tbl) do
			hl(tostring(hl_name), hl_val)
		end
	end
end

--- loads higlight for the editor plugins highlight groups.
---@param plugins_tbl table plugins table to load group highlights for.
M.load_plugins_hl = function(plugins_tbl)
	--- table of colors
	---@table colors
	local colors = utils.colors

	local plugins_hl_groups = {}
	for name_orig, enabled in pairs(plugins_tbl) do
		if enabled then
			-- formatted plugin name by replacing the . char with _ in plugin name.
			local name_formatted = nil
			if type(name_orig) == "string" then
				name_formatted = require("fused.utils").format_plugin_name(name_orig)
			end
			local hl_tbl = require("fused.groups.plugins." .. name_formatted or name_orig).load_hl(colors)
			plugins_hl_groups = vim.tbl_extend("force", plugins_hl_groups, hl_tbl)
			if utils.polish and utils.polish()[name_orig] then
				plugins_hl_groups =
					vim.tbl_extend("force", plugins_hl_groups, utils.polish()[name_orig])
			end
		end
	end

	available_hl_groups = vim.tbl_extend("force", available_hl_groups, plugins_hl_groups)

	for hl_name, hl_val in pairs(plugins_hl_groups) do
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
