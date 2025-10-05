local configs = require "nvchad.configs.lspconfig"
local util = require "lspconfig/util"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- web stuff
  eslint = {},
  ts_ls = {
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  },
  volar = {
    filetypes = { "vue" },
    init_options = {
      typescript = {
        tsdk = os.getenv "HOME"
          .. "/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib",
        -- Alternative location if installed as root:
        -- tsdk = '/usr/local/lib/node_modules/typescript/lib'
      },
    },
  },
  svelte = {},
  biome = {},

  html = {},

  cssls = {},
  tailwindcss = {},

  -- c/cpp stuff
  clangd = {},

  -- shell stuff
  bashls = {},
  fish_lsp = {},

  -- python
  ruff = {},
  pyright = {},
  -- basedpyright = {
  --   analysis = {
  --     diagnosticMode = "openFilesOnly",
  --     inlayHints = {
  --       callArgumentNames = true,
  --     },
  --   },
  -- },
  -- pylsp = {},
  -- jedi_language_server = {},

  -- rust
  rust_analyzer = {
    filetypes = { "rust" },
    root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
      },
    },
  },

  -- java
  jdtls = {},

  qmlls = {},
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
