return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"astro",
					"clangd",
					"html",
					"ltex",
					"mdx_analyzer",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- lua_ls
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			-- Rust
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			-- Astro
			lspconfig.astro.setup({
				capabilities = capabilities,
			})
			-- C
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			-- HTML
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			-- Mardown
			lspconfig.ltex.setup({
				capabilities = capabilities,
			})
			-- MDX
			lspconfig.mdx_analyzer.setup({
				capabilities = capabilities,
			})
			-- javascript/typescript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- Keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
