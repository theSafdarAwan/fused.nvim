local M = {}

M.set_nvim_tree_hl = function(hl, cp)
    hl("NvimTreeGitDirty", { fg = cp.red })
    hl("NvimTreeGitStaged", { fg = cp.green })
    hl("NvimTreeGitNew", { fg = cp.red })
    hl("NvimTreeGitDeleted", { fg = cp.red })
    hl("NvimTreeRootFolder", { fg = cp.blue })
    hl("NvimTreeIndentMarker", { fg = cp.cp1 })
    hl("NvimTreeSymlink", { fg = cp.sky })
    hl("NvimTreeFolderName", { fg = cp.white })
    hl("NvimTreeFolderIcon", { link = "NvimTreeFolderName" })
    hl("NvimTreeEmptyFolderName", { fg = cp.white })
    hl("NvimTreeOpenedFolderName", { link = "NvimTreeFolderName" })
    hl("NvimTreeExecFile", { fg = cp.green })
    hl("NvimtreeFileStaged", { fg = cp.green })
    -- NvimTreeGitMerge
    -- NvimTreeFileDirty
    -- NvimTreeFileStaged
    -- NvimTreeGitRenamed
    -- NvimTreeFileMerge
    -- NvimTreeFileRenamed
    -- NvimTreeFileNew
    -- NvimTreeFileDeleted
    -- NvimTreeOpenedFile
    -- NvimTreeSpecialFile
    -- NvimTreeImageFile
    -- NvimTreeMarkdownFile
    -- NvimTreeLicenseIcon
    -- NvimTreeYamlIcon
    -- NvimTreeTomlIcon
    -- NvimTreeGitignoreIcon
    -- NvimTreeJsonIcon
    -- NvimTreeLuaIcon
    -- NvimTreePythonIcon
    -- NvimTreeShellIcon
    -- NvimTreeJavascriptIcon
    -- NvimTreeCIcon
    -- NvimTreeReactIcon
    -- NvimTreeHtmlIcon
    -- NvimTreeRustIcon
    -- NvimTreeVimIcon
    -- NvimTreeTypescriptIcon
end
return M
