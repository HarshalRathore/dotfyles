return {
	{
		"shellRaining/hlchunk.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local exclude_ft = {
				help = true,
				git = true,
				markdown = true,
				snippets = true,
				text = true,
				gitconfig = true,
				alpha = true,
				dashboard = true,
				["neo-tree"] = true,
				lspinfo = true,
				mason = true,
				lazy = true,
				trouble = true,
				Trouble = true,
				man = true,
				notify = true,
			}
			require("hlchunk").setup({
				chunk = {
					enable = true,
					exclude_filetypes = exclude_ft,
				},
				line_num = {
					enable = true,
					exclude_filetypes = exclude_ft,
				},
				indent = {
					enable = true,
					chars = { "┊" },
					exclude_filetypes = exclude_ft,
				},
			})
		end,
	},
	{
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		-- See `:help ibl`
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		config = function(_)
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
			local exclude_ft = {
				"help",
				"git",
				"markdown",
				"snippets",
				"text",
				"gitconfig",
				"alpha",
				"dashboard",
				"neo-tree",
				"lspinfo",
				"mason",
				"lazy",
			}
			require("ibl").setup({
				enabled = true,
				scope = { show_exact_scope = true, highlight = { "Function", "Label" } },
				indent = {
					char = "│",
				},
				exclude = {
					filetypes = exclude_ft,
					buftypes = { "terminal" },
				},
			})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		enabled = false,
		event = "VeryLazy",
		opts = {
			symbol = "▏",
			-- symbol = "│",
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
