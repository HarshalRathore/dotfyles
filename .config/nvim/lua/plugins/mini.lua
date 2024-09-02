return {
	-- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = true })

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
		require("mini.notify").setup({
			content = {
				format = function(notif)
					return notif.msg
				end,
			},
			window = {
				config = {
					border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
				},
			},
		})
		vim.notify = require("mini.notify").make_notify()
		require("mini.basics").setup({
			options = {
				extra_ui = true,
			},
		})
		require("mini.tabline").setup({})
		require("mini.surround").setup({
			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				add = "<leader>cc", -- Add surrounding in Normal and Visual modes
				delete = "<leader>cd", -- Delete surrounding
				find = "<leader>cv", -- Find surrounding (to the right)
				find_left = "<leader>cF", -- Find surrounding (to the left)
				highlight = "<leader>ch", -- Highlight surrounding
				replace = "<leader>cr", -- Replace surrounding
				update_n_lines = "<leader>cn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		}) -- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
