-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors
--

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },

  NvDashAscii = { fg = "white", bg = "none" },
  NvDashButtons = { bg = "none" },

  -- TODO Remove everything from below and somehow make the polish_hl work
  -- NvimTree
  NvimTreeNormal = { bg = "black2" },
  NvimTreeNormalNC = { bg = "black2" },
  NvimTreeWinSeparator = { bg = "black2", fg = "grey_fg" },
  NvimTreeCursorLine = { bg = "grey_fg" },

  -- Tabufline
  TbBufOn = { bg = "grey_fg" },
  TbBufOnClose = { bg = "one_bg3" },

  -- Telescope
  TelescopeNormal = { bg = "black2" },

  TelescopeBorder = { bg = "black2", fg = "grey_fg" },
  TelescopePromptBorder = { bg = "black2", fg = "grey_fg" },

  TelescopePromptTitle = { bg = "black2", fg = "folder_bg" },
  TelescopeResultsTitle = { bg = "black2", fg = "folder_bg" },
  TelescopePreviewTitle = { bg = "black2", fg = "folder_bg" },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },

  IndentBlanklineIndent1 = { fg = "grey_fg2" },
  IndentBlanklineIndent2 = { fg = "one_bg" },
  IndentBlanklineIndent3 = { fg = "grey" },
  IndentBlanklineIndent4 = { fg = "one_bg2" },
  IndentBlanklineIndent5 = { fg = "grey_fg" },
  IndentBlanklineIndent6 = { fg = "one_bg3" },
}

return M
