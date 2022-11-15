local M = {}
M.set = function()
    require("fused.groups.editor").set_editor_hl()
    require("fused.groups.syntax").set_syntax_hl()

    require("fused.groups.tree-sitter").set_tree_sitter_hl()
    require("fused.groups.lsp").set_lsp_hl()
end

M.set_plugins = function()
    require("fused.groups.plugins.todo-comments").set_todo_comments_hl()
    require("fused.groups.plugins.neorg").set_neorg_hl()
    require("fused.groups.plugins.nvim-tree").set_nvim_tree_hl()
    require("fused.groups.plugins.cmp").set_cmp_hl()
    require("fused.groups.plugins.indent-blank-line").set_indent_blank_line_hl()
    require("fused.groups.plugins.harpoon").set_harpoon_hl()
    require("fused.groups.plugins.trouble").set_trouble_hl()
    require("fused.groups.plugins.telescope").set_telescope_hl()
end
return M
