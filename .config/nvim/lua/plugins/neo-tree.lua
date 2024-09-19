return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		{
			"s1n7ax/nvim-window-picker",
			version = "2.*",
			config = function()
				require("window-picker").setup({
					filter_rules = {
						include_current_win = false,
						autoselect_one = true,
						-- filter using buffer options
						bo = {
							-- if the file type is one of following, the window will be ignored
							filetype = { "neo-tree", "neo-tree-popup", "notify" },
							-- if the buffer type is one of following, the window will be ignored
							buftype = { "terminal", "quickfix" },
						},
					},
				})
			end,
		},
	},
	cmd = "Neotree",
	keys = {
		{ "\\", "<cmd>lua utils.peek_neotree()<CR>", desc = "NeoTree reveal", silent = true },
		{
			"<leader>e", -- Key mapping
			function()
				local reveal_file = vim.fn.expand("%:p")
				if reveal_file == "" then
					reveal_file = vim.fn.getcwd()
				else
					local f = io.open(reveal_file, "r")
					if f then
						f.close(f)
					else
						reveal_file = vim.fn.getcwd()
					end
				end
				require("neo-tree.command").execute({
					toggle = true,
					reveal_file = reveal_file, -- path to file or folder to reveal
					reveal_force_cwd = true, -- change cwd without asking if needed
				})
			end,
			desc = "Neo-tree", -- Description for the keymap
			silent = true, -- Silence the keymap (no echoing of command)
		},
	},
	opts = {
		open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
		source_selector = {
			winbar = true,
			statusline = false,
		},
		filesystem = {
			filtered_items = {
				hide_by_name = {
					"node_modules",
				},
			},
			use_libuv_file_watcher = true,
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
		-- added = "✚ ", modified = "", deleted = "✖ ", renamed = "󰁕", untracked = "", ignored = " ", unstaged = "󰄱 ", staged = " ", conflict = " ",
	},
}
