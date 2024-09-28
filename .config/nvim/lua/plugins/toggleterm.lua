return {
	"akinsho/toggleterm.nvim",
	cmd = "ToggleTerm",
	keys = function(_, keys)
		local function toggleterm()
			local venv = vim.b["virtual_env"]
			local root_patterns = { ".git", ".clang-format", "pyproject.toml", "setup.py" }
			local root_dir = vim.fs.dirname(vim.fs.find(root_patterns, { upward = true })[1])
			local term = require("toggleterm.terminal").Terminal:new({
				env = venv and { VIRTUAL_ENV = venv } or nil,
				count = vim.v.count > 0 and vim.v.count or 1,
				dir = root_dir,
			})
			term:toggle()
		end
		local mappings = {
			{ "<C-/>", mode = { "n", "t" }, toggleterm, desc = "Terminal(root_dir)" },
			{ "<C-_>", mode = { "n", "t" }, toggleterm, desc = "which_key_ignore" },
		}
		return vim.list_extend(mappings, keys)
	end,
	opts = {
		open_mapping = false,
		float_opts = {
			border = "curved",
			title_pos = "center",
		},
	},
}
