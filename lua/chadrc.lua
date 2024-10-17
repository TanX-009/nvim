-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

-- Path to overriding theme and highlights files
local highlights = require "highlights"

---@type ChadrcConfig
local M = {
  base46 = {
    theme = "matugen",
    theme_toggle = { "matugen", "one_light" },

    hl_override = highlights.override,
    hl_add = highlights.add,
  },
  ui = {
    statusline = {
      theme = "minimal",
    },
  },
  nvdash = require "configs.nvdash",
}

return M
