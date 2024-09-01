-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
local term_opts = { silent = true }
local keymap = vim.keymap.set
local function opts(desc)
	local options = {
		noremap = true,
		silent = true,
		desc = desc,
	}
	return options
end

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts("Remove highlight search when press 'esc' to go into normal mode"))

-- Exit terminal mode .
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own keymapping
-- or just use <C-\><C-n> to exit terminal mode
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", opts("Exit Terminal mode."))

-- TIP: Disable arrow keys in normal mode
keymap("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Resize Windows with arrows
keymap("n", "<C-Down>", ":resize -2<CR>", opts("Change window height upward"))
keymap("n", "<C-Up>", ":resize +2<CR>", opts("Change window height downward"))
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts("Change window width leftward"))
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts("Change window width rightward"))

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts("Switch to Next buffer."))
keymap("n", "<S-h>", ":bprevious<CR>", opts("Switch to Previous buffer."))

-- Stay in indent mode
keymap("v", "<", "<gv", opts("Decrease Indent"))
keymap("v", ">", ">gv", opts("Increase Indent"))

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts("move line up(n)"))
keymap("n", "<A-k>", ":m .-2<CR>==", opts("move line down(n)"))
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts("move line up(v)"))
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts("move line down(v)"))

keymap("v", "p", '"_dP', opts("Pasting without yanking"))

keymap("n", "C-X", ":qa", opts("Ctrl-x to close window"))

keymap("n", "<leader>d", '"_d', opts("Delete text without yanking"))

keymap("v", "<leader>d", '"_d', opts("Delete text without yanking in Visual Mode"))

keymap("n", "<leader>bd", "<Esc>:bd<CR>", opts("Delete current buffer"))

local which_key = require("which-key")
which_key.add({
	{ "<leader>c", group = "[C]ode" },
	-- { "<leader>d", group = "[D]ocument" },
	{ "<leader>r", group = "[R]ename" },
	{ "<leader>s", group = "[S]earch" },
	{ "<leader>w", group = "[Workspace]" },
	{ "<leader>t", group = "[T]oggle" },
	{ "<leader>b", group = "[B]uffers" },
	{ "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
	{
		"<leader>?",
		function()
			require("which-key").show({ global = false })
		end,
		desc = "Buffer Local Keymaps (which-key)",
	},
})

-- See `:help telescope.builtin`
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set(
	"n",
	"<leader>sp",
	":lua require'telescope'.extensions.project.project{sync_with_nvim_tree = true,}<CR>",
	{ desc = "[S]earch [P]roject" }
)

-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to Telescope to change the theme, layout, etc.
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set("n", "<leader>s/", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [/] in Open Files" })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

-- TIP: Comment bellow keymaps if you are already using christoomey/vim-tmux-navigator plugin

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
-- See `:help wincmd` for a list of all window commands
--vim.map.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
--vim.map.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
--vim.map.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
--vim.map.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Function to reload Neovim configuration
--local function reload_config()
--  for name, _ in pairs(package.loaded) do
--    if name:match "^user" then
--      package.loaded[name] = nil
--    end
--  end
--  dofile(vim.env.MYVIMRC)
--  print("Neovim configuration reloaded")
--end
--vim.map.set('n', '<leader><C-r>', reload_config, { desc = 'Source Config' })
