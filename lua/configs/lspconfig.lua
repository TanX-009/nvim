require("nvchad.configs.lspconfig").defaults()

-- if you just want default config for the servers then put them in a table
local servers = {
  -- web stuff
  eslint = {},
  ts_ls = {
    filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "typescript.d", "vue" },
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  },
  vue_ls = {
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
  rust_analyzer = {},

  -- java
  jdtls = {},

  qmlls = {},

  yamlls = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable { name }
end
