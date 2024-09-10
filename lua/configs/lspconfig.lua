-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local util = require("lspconfig/util")

local lspconfig = require("lspconfig")
-- if you just want default config for the servers then put them in a table
local servers = {
	-- web stuff
	"eslint",
	-- "ts_ls",
	"biome",

	"html",

	"cssls",
	-- "tailwindcss",

	-- c/cpp stuff
	"clangd",

	-- shell stuff
	"bashls",

	-- python
	"pyright",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end

-- Typescript language server
local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
	}
	vim.lsp.buf.execute_command(params)
end

lspconfig.ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports",
		},
	},
})

-- Vue language options (volar)
lspconfig.volar.setup({
	filetypes = { "vue" },
	init_options = {
		typescript = {
			tsdk = os.getenv("HOME")
				.. "/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib",
			-- Alternative location if installed as root:
			-- tsdk = '/usr/local/lib/node_modules/typescript/lib'
		},
	},
})

-- rust
lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "rust" },
	root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
		},
	},
})
