local M = {}

M.load_hl = function(hl, cp)
    hl("NvimTreeNormal", { bg = cp.bg })
    hl("NvimTreeGitDirty", { fg = cp.err })
    hl("NvimTreeGitStaged", { fg = cp.search })
    hl("NvimTreeGitNew", { fg = cp.err })
    hl("NvimTreeGitDeleted", { fg = cp.err })
    hl("NvimTreeRootFolder", { fg = cp.blue })
    hl("NvimTreeIndentMarker", { fg = cp.cp1 })
    hl("NvimTreeSymlink", { link = "@field" })
    hl("NvimTreeFolderName", { fg = cp.white })
    hl("NvimTreeFolderIcon", { link = "NvimTreeFolderName" })
    hl("NvimTreeEmptyFolderName", { fg = cp.white })
    hl("NvimTreeOpenedFolderName", { link = "NvimTreeFolderName" })
    hl("NvimTreeExecFile", { fg = cp.search })
    hl("NvimtreeFileStaged", { fg = cp.search })
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
