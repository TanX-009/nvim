require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local Snacks = require "snacks"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
-- to right tab
map("n", "<A-.>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
-- to left tab
map("n", "<A-,>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
-- move right
map("n", "<AS-.>", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "buffer move right" })
-- move left
map("n", "<AS-,>", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "buffer move left" })
-- close buffer
map("n", "<A-w>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- restart
-- lsp
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
-- nvim tree
map("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })

-- lazygit
map("n", "<leader>lg", function()
  Snacks.lazygit()
end, { desc = "LazyGit" })

-- spectre
map("n", "<leader>sr", function()
  require("spectre").open()
end, { desc = "Replace in files (Spectre)" })

-- snacks
map("n", "<leader>sd", function()
  Snacks.dim()
end, { desc = "Snacks dim everything else to focus in context" })

-- avante.nvim
map("n", "<leader>av", "<cmd>AvanteToggle<CR>", { desc = "Toggle Avante panel" })

-- ccc
map("n", "<leader>pc", "<cmd>CccPick<CR>", { desc = "Pick color" })

-- neck pain
map("n", "<CS-n>", function()
  local tree = require "nvim-tree"
  local tree_api = require "nvim-tree.api"
  local preset_width = tree.get_config().view.width
  local width = math.floor(vim.go.columns * 0.35 + 0.5)

  if tree_api.tree.is_visible() then
    tree_api.tree.close()
    tree_api.tree.resize { absolute = preset_width }
  else
    tree_api.tree.open()
    tree_api.tree.resize { absolute = width }
  end
end, { desc = "Open NVIM Tree to center the buffer to bring it to the center" })

--git
--blame
map("n", "<leader>gb", "<cmd>Gitsigns blame<CR>", { desc = "Open gitsigns blame view" })
