return {
	"rmagatti/auto-session",
	event = "VeryLazy",
	init = function()
		vim.opt.laststatus = 3
		vim.opt.splitkeep = "screen"
	end,
	dependencies = {
		"nvim-telescope/telescope.nvim", -- Only needed if you want to use session lens
	},
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>qf", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>qs", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>qt", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle session autosave" },
	},
	opts = {
		bypass_save_filetypes = { "alpha", "netrw" }, -- don't save session for only when dashboard is visible
		suppressed_dirs = { "~", "~/Projects", "~/Downloads", "/" },
		session_lens = {
			mappings = {
				-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
				delete_session = { "i", "<C-D>" },
				alternate_session = { "i", "<C-S>" },
			},
			-- Can also set some Telescope picker options
			theme_conf = {
				border = true,
			},
		},
	},
}
