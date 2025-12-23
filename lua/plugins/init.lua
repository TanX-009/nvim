local overrides = require "configs.overrides"

return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
    opts = { huefy = { border = false } },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { { "nvim-treesitter/nvim-treesitter" } },
  },

  -- formating
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  --linting
  {
    "mfussenegger/nvim-lint",
    event = "InsertEnter",
    config = function()
      require "configs.lint"
    end,
    enabled = false,
  },

  --git
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
    -- keys = {
    --   { "<leader>gdo", "<cmd>DiffviewOpen<cr>", desc = "Diff Open" },
    --   { "<leader>gdf", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
    --   { "<leader>gdm", "<cmd>DiffviewOpen master<cr>", desc = "Diff Master" },
    --   { "<leader>gdM", "<cmd>DiffviewOpen main<cr>", desc = "Diff Main" },
    -- },
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = { "tzachar/cmp-ai" },
    opts = overrides.nvimcmp,
  },

  { "hrsh7th/cmp-nvim-lsp-signature-help" },

  {
    "kylechui/nvim-surround",
    event = "InsertEnter",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- project wide search and replace
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
  },

  -- colors
  {
    "uga-rosa/ccc.nvim",
    cmd = "CccPick",
    opts = overrides.ccc,
  },

  -- Scrollbar
  {
    "dstein64/nvim-scrollview",
    event = "BufEnter",
    lazy = true,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require "configs.comment"
    end,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
  },

  -- DAP
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,

    keys = require("configs.dap.keys").dap,
    dependencies = {
      "rcarriga/nvim-dap-ui",
      -- virtual text for the debugger
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
      {
        "mfussenegger/nvim-dap-python",
        -- stylua: ignore
        keys = {
          { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
          { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
        },
        config = function()
          require("dap-python").setup "debugpy-adapter"
        end,
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    keys = require("configs.dap.keys").dapui,
    opts = {},
    config = function()
      require "configs.dap.ui"
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = "mason.nvim",
    cmd = { "DapInstall", "DapUninstall" },
    config = function()
      require("mason").setup(require("configs.dap.mason").opts)
    end,
  },

  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
    },
    cmd = "Emmet",
  },

  -- ft specific
  {
    "Fymyte/rasi.vim",
    ft = { "rasi" },
  },

  {
    "elkowar/yuck.vim",
    ft = { "yuck" },
  },

  {
    "razak17/tailwind-fold.nvim",
    opts = {},
    enabled = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
  },

  -- { import = "nvchad.blink.lazyspec" },
}
