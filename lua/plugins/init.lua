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

  -- github copilot
  -- {
  --   "zbirenbaum/copilot.lua",
  --   enabled = false,
  --   event = "InsertEnter",
  --   opts = overrides.copilot,
  -- },

  -- copilot integration for nvim-cmp and copilot-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- {
      --   "zbirenbaum/copilot-cmp",
      --   config = function()
      --     require("copilot_cmp").setup()
      --   end,
      -- },
    },
    opts = overrides.nvimcmp,
  },

  { "hrsh7th/cmp-nvim-lsp-signature-help" },

  {
    "folke/snacks.nvim",

    opts = function()
      return require "configs.snacks"
    end,
  },

  {
    "yetone/avante.nvim",
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- ⚠️ must add this setting! ! !
    build = function()
      -- conditionally use the correct build system for the current OS
      if vim.fn.has "win32" == 1 then
        return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      else
        return "make"
      end
    end,
    -- event = "VeryLazy",
    cmd = "AvanteToggle",
    version = false, -- Never set this value to "*"! Never!
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      provider = "ollama",
      providers = {
        ollama = {
          endpoint = "http://localhost:11434",
          model = "qwen3:latest",
        },
      },
      input = {
        provider = "snacks",
        provider_opts = {
          -- Additional snacks.input options
          title = "Avante Input",
          icon = " ",
        },
      },
      selector = {
        --- @alias avante.SelectorProvider "native" | "fzf_lua" | "mini_pick" | "snacks" | "telescope" | fun(selector: avante.ui.Selector): nil
        --- @type avante.SelectorProvider
        provider = "telescope",
        -- Options override for custom providers
        provider_opts = {
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
            },
            width = 0.87,
            height = 0.80,
          },
        },
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
      -- "stevearc/dressing.nvim", -- for input provider dressing
      "folke/snacks.nvim", -- for input provider snacks
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      -- "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    lazy = true,
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
