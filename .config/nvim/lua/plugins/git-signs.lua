return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	-- See `:help gitsigns` to understand what the configuration keys do
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	opts = {
		signs = {
			add = { text = "▎" },
			change = { text = "▎" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▎" },
			untracked = { text = "▎" },
		},
		signs_staged = {
			add = { text = "▎" },
			change = { text = "▎" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▎" },
		},
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Jump to next git [c]hange" })

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Jump to previous git [c]hange" })

			-- Actions
			-- visual mode
			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "stage git hunk" })
			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "reset git hunk" })
			-- normal mode
			map("n", "<leader>ghs", gitsigns.stage_hunk, { desc = "git [s]tage hunk" })
			map("n", "<leader>ghr", gitsigns.reset_hunk, { desc = "git [r]eset hunk" })
			map("n", "<leader>ghS", gitsigns.stage_buffer, { desc = "git [S]tage buffer" })
			map("n", "<leader>ghu", gitsigns.undo_stage_hunk, { desc = "git [u]ndo stage hunk" })
			map("n", "<leader>ghR", gitsigns.reset_buffer, { desc = "git [R]eset buffer" })
			map("n", "<leader>ghp", gitsigns.preview_hunk, { desc = "git [p]review hunk" })
			map("n", "<leader>ghb", gitsigns.blame_line, { desc = "git [b]lame line" })
			map("n", "<leader>ghd", gitsigns.diffthis, { desc = "git [d]iff against index" })
			map("n", "<leader>ghD", function()
				gitsigns.diffthis("@")
			end, { desc = "git [D]iff against last commit" })
			-- Toggles
			map("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle git show [b]lame line" })
			map("n", "<leader>gtD", gitsigns.toggle_deleted, { desc = "[T]oggle git show [D]eleted" })
		end,
	},
}
