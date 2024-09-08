return {
	"nvimtools/none-ls.nvim",
	enabled = false,
	config = function()
		local null_ls = require("null-ls")
		local options = {
			sources = {
				-- null_ls.builtins.daignostics.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				-- null_ls.builtins.daignostics.luacheck,
			},
			null_ls.builtins.diagnostics.pylint.with({
				env = function(params)
					return { PYTHONPATH = params.root }
				end,
			}),
		}
		vim.keymap.set("n", "<leader>cn", vim.lsp.buf.code_action, { desc = "null-ls code_action" })
		null_ls.setup(options)
	end,
}
