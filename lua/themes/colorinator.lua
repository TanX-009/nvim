local colors_path = (os.getenv "HOME" .. "/.colors/generated/lua/colors.lua")

local color_utils = require "utils.color"

---@type Base46Table
local M = {
  add_hl = {},
  polish_hl = {},
}

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
  M.type = type

  M.base_30 = {
    white = colors.on_surface,
    darker_black = colors.surface_container_lowest,
    black = colors.surface_container, --  nvim bg
    black2 = colors.surface,
    one_bg = colors.surface_container,
    one_bg2 = colors.surface_container_high,
    one_bg3 = colors.surface_container_highest,
    grey = colors.primary,
    grey_fg = colors.tertiary_container,
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
  }
  -- test

  M.base_16 = {
    base00 = colors.term0,
    base01 = colors.term1,
    base02 = colors.term2,
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
  }
else
  M = require "base46.themes.dark_horizon"
end

return M
