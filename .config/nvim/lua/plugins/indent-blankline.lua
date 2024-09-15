return {
	{
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
		event = "User FilePost",
		-- See `:help ibl`
		main = "ibl",
		opts = {
			indent = { char = "│", highlight = "IblChar" },
			scope = { char = "│", highlight = "IblScopeChar" },
		},
		config = function(_, opts)
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
			require("ibl").setup(opts)
		end,
	},
	{
		"echasnovski/mini.indentscope",
		event = "VeryLazy",
		opts = {
			-- symbol = "▏",
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"alpha",
					"dashboard",
					"fzf",
					"help",
					"lazy",
					"lazyterm",
					"mason",
					"neo-tree",
					"notify",
					"toggleterm",
					"Trouble",
					"trouble",
					"man",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
}
