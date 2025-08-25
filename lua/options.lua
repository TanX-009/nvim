require "nvchad.options"

-- add yours here!

local o = vim.o
local b = vim.b
local g = vim.g

local api = vim.api

-- o.cursorlineopt ='both' -- to enable cursorline!
o.shell = "fish"
o.relativenumber = true

api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    b.disable_autoformat = true
  else
    g.disable_autoformat = true
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})
api.nvim_create_user_command("FormatEnable", function()
  b.disable_autoformat = false
  g.disable_autoformat = false
end, {
  desc = "Re-enable autoformat-on-save",
})
