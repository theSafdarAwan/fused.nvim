--- Loads highlights.
local M = {}

local hl = require("fused.utils").set_hl

--- Utils module
---@table exposes utils
local utils = require("fused.utils")

--- loads higlights for editor builtins highlight groups including editor, syntax and lsp
M.load_builtin_hls = function()
	--- table of colors
	---@table colors
	local colors = utils.colors
	local builtins = require("fused.groups.builtins").load_builtins(colors)
	if utils.polished then
		local groups_tbl = {
			"editor",
			"syntax",
			"lsp",
		}
		local polished = utils.polished
		for _, group in ipairs(groups_tbl) do
			builtins[group] = vim.tbl_deep_extend("force", builtins[group], polished[group] or {})
		end
	end

	for _, hl_tbl in pairs(builtins) do
		for hl_name, hl_val in pairs(hl_tbl) do
			hl(tostring(hl_name), hl_val)
		end
	end
end

--- loads higlight for the plugins.
---@param plugins_tbl table plugins table to load highlights for.
M.load_plugins_hl = function(plugins_tbl)
	--- table of colors
	---@table colors
	local colors = utils.colors

	local plugins_hl = {}
	for name_orig, enabled in pairs(plugins_tbl) do
		if enabled then
			-- formatted plugin name by replacing the . char with _ in plugin name.
			local name_formatted = nil
			if type(name_orig) == "string" then
				name_formatted = require("fused.utils").format_plugin_name(name_orig)
			end
			local hl_tbl = require("fused.groups.plugins." .. name_formatted or name_orig).load_hl(colors)
			plugins_hl = vim.tbl_extend("force", plugins_hl, hl_tbl)
			if utils.polished and utils.polished[name_orig] then
				plugins_hl = vim.tbl_extend("force", plugins_hl, utils.polished[name_orig])
			end
		end
	end

	-- set higlights
	for hl_name, hl_val in pairs(plugins_hl) do
		hl(tostring(hl_name), hl_val)
	end
end

return M
