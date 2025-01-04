return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.black, -- Python
				null_ls.builtins.formatting.prettier, -- JavaScript/TypeScript
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "cpp", "c", "h" }, -- Enable for C, C++, and headers
				}),

				-- Diagnostics (Optional)
				null_ls.builtins.diagnostics.erb_lint, -- Ruby
				null_ls.builtins.diagnostics.rubocop, -- Ruby
			},
		})

		-- Optional key mapping for manual formatting
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
