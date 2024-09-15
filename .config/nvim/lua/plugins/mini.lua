return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- require("mini.notify").setup({
		-- 	content = {
		-- 		format = function(notif)
		-- 			return notif.msg
		-- 		end,
		-- 	},
		-- 	window = {
		-- 		config = {
		-- 			border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
		-- 		},
		-- 	},
		-- })
		-- vim.notify = require("mini.notify").make_notify()
		-- require("mini.basics").setup({
		-- 	options = {
		-- 		extra_ui = true,
		-- 	},
		-- })
		require("mini.surround").setup({
			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				add = "sa", -- Add surrounding in Normal and Visual modes
				delete = "sd", -- Delete surrounding
				find = "sf", -- Find surrounding (to the right)
				find_left = "sF", -- Find surrounding (to the left)
				highlight = "sh", -- Highlight surrounding
				replace = "sr", -- Replace surrounding
				update_n_lines = "sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		})
	end,
}
