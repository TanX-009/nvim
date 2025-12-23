local colors_path = (os.getenv "HOME" .. "/.colors/generated/lua/colors.lua")

local color_utils = require "utils.color"

local file = io.open(colors_path, "r") -- Try to open the file in read mode
if file then
  file:close() -- Close the file if it was successfully opened
  local colors = dofile(colors_path)

  local type = "dark"
  if color_utils.is_bright_hex(colors.surface_container) then
    type = "light"
  else
    type = "dark"
  end

  ---@type Base46Table
  local M = {
    type = type,
    base_16 = {
      base00 = colors.term0,
      base01 = colors.term1,
      base02 = colors.surface_container_highest,
      base03 = colors.term3,
      base04 = colors.term4,
      base05 = colors.term5,
      base06 = colors.term6,
      base07 = colors.term7,
      base08 = colors.term8,
      base09 = colors.term9,
      base0A = colors.term10,
      base0B = colors.term11,
      base0C = colors.term12,
      base0D = colors.term13,
      base0E = colors.term14,
      base0F = colors.term15,
    },
    base_30 = {

      white = colors.on_surface,
      darker_black = colors.surface_container_lowest,
      black = colors.surface_container_low, --  nvim bg
      black2 = colors.surface,
      one_bg = colors.surface_container,
      one_bg2 = colors.surface_container_high,
      one_bg3 = colors.surface_container_highest,
      grey = colors.primary,
      grey_fg = colors.outline_variant,
      grey_fg2 = colors.outline,
      light_grey = colors.on_surface_variant,
      red = colors.red,
      baby_pink = colors.magenta,
      pink = colors.deeppink,
      green = colors.limegreen,
      vibrant_green = colors.chartreuse,
      blue = colors.blue,
      nord_blue = colors.royalblue,
      yellow = colors.gold,
      sun = colors.darkorange,
      purple = colors.mediumpurple,
      dark_purple = colors.purple,
      teal = colors.mediumaquamarine,
      orange = colors.orange,
      cyan = colors.cyan,
      line = colors.outline_variant, -- for lines like vertsplit
      statusline_bg = colors.surface_container_low,
      lightbg = colors.surface_container,
      pmenu_bg = colors.primary,
      folder_bg = colors.secondary,
    },
    add_hl = {},
    polish_hl = {
      -- NvimTree
      NvimTreeNormal = { bg = colors.surface },
      NvimTreeNormalNC = { bg = colors.surface },
      NvimTreeWinSeparator = { bg = colors.surface, fg = colors.outline_variant },
      NvimTreeCursorLine = { bg = colors.outline_variant },

      -- Tabufline
      TbBufOn = { bg = colors.outline_variant },
      TbBufOnClose = { bg = colors.surface_container_highest },

      -- Telescope
      TelescopeNormal = { bg = colors.surface },

      TelescopeBorder = { bg = colors.surface, fg = colors.outline_variant },
      TelescopePromptBorder = { bg = colors.surface, fg = colors.outline_variant },

      TelescopePromptTitle = { bg = colors.surface, fg = colors.secondary },
      TelescopeResultsTitle = { bg = colors.surface, fg = colors.secondary },
      TelescopePreviewTitle = { bg = colors.surface, fg = colors.secondary },
    },
  }

  return M
else
  local M = require "base46.themes.dark_horizon"
  return M
end
