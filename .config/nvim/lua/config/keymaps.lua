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

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts("Switch to Next buffer."))
keymap("n", "<S-h>", ":bprevious<CR>", opts("Switch to Previous buffer."))
keymap("n", "<leader>bd", "<Esc>:bd<CR>", opts("Delete current buffer"))

-- Stay in indent mode
keymap("v", "<", "<gv", opts("Decrease Indent"))
keymap("v", ">", ">gv", opts("Increase Indent"))

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts("move line up(n)"))
keymap("n", "<A-k>", ":m .-2<CR>==", opts("move line down(n)"))
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts("move line up(v)"))
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts("move line down(v)"))

keymap("v", "p", '"_dp', opts("Paste without yanking"))
keymap("v", "c", '"_c', opts("change without yanking"))
keymap("n", "c", '"_c', opts("change without yanking"))
keymap("n", "d", '"_d', opts("Delete without yanking"))
keymap("v", "d", '"_d', opts("Delete without yanking"))

-- windows
keymap("n", "<leader>w", "<c-w>", opts("Windows"))
keymap("n", "<leader>-", "<C-W>s", opts("Split Window Below"))
keymap("n", "<leader>|", "<C-W>v", opts("Split Window Right"))
keymap("n", "<leader>wd", "<C-W>c", opts("Delete Window"))
keymap("n", "<leader>wD", "<cmd>:bd<cr>", opts("Delete window & buffer"))
keymap("n", "<c-down>", ":resize -2<cr>", opts("change window height upward"))
keymap("n", "<c-up>", ":resize +2<cr>", opts("change window height downward"))
keymap("n", "<c-right>", ":vertical resize -2<cr>", opts("change window width leftward"))
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts("Change window width rightward"))

-- tabs
keymap("n", "<leader><tab>l", "<cmd>tablast<cr>", opts("Last Tab"))
keymap("n", "<leader><tab>o", "<cmd>tabonly<cr>", opts("Close Other Tabs"))
keymap("n", "<leader><tab>f", "<cmd>tabfirst<cr>", opts("First Tab"))
keymap("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", opts("New Tab"))
keymap("n", "<leader><tab>]", "<cmd>tabnext<cr>", opts("Next Tab"))
keymap("n", "<A-l>", "<cmd>tabnext<cr>", opts("Next Tab"))
keymap("n", "<leader><tab>d", "<cmd>tabclose<cr>", opts("Close Tab"))
keymap("n", "<leader><tab>[", "<cmd>tabprevious<cr>", opts("Previous Tab"))
keymap("n", "<A-h>", "<cmd>tabprevious<cr>", opts("Previous Tab"))

local which_key = require("which-key")
which_key.add({
	{ "<leader>c", group = "[C]ode", icon = { icon = " ", color = "blue" } },
	-- { "<leader>d", group = "[D]ocument" },
	{ "<leader>r", group = "[R]ename", icon = { icon = " ", color = "cyan" } },
	{ "<leader>s", group = "[S]earch", icon = { icon = " ", color = "yellow" } },
	{ "<leader>q", group = "quit/session", icon = { icon = " ", color = "azure" } },
	{ "<leader>t", group = "[T]oggle", icon = { icon = " ", color = "grey" } },
	{ "<leader>b", group = "[B]uffers", icon = { icon = " ", color = "cyan" } },
	{ "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
	-- { "<leader>d", icon = { icon = "󰍷 ", color = "red" } },
	{ "<leader>bd", icon = { icon = "󰍷 ", color = "red" } },
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

keymap("n", "<leader>sh", builtin.help_tags, opts("[S]earch [H]elp"))
keymap("n", "<leader>sk", builtin.keymaps, opts("[S]earch [K]eymaps"))
keymap("n", "<leader>sf", builtin.find_files, opts("[S]earch [F]iles"))
keymap("n", "<leader>ss", builtin.builtin, opts("[S]earch [S]elect Telescope"))
keymap("n", "<leader>sw", builtin.grep_string, opts("[S]earch current [W]ord"))
keymap("n", "<leader>sg", builtin.live_grep, opts("[S]earch by [G]rep"))
keymap("n", "<leader>sd", builtin.diagnostics, opts("[S]earch [D]iagnostics"))
keymap("n", "<leader>sr", builtin.resume, opts("[S]earch [R]esume"))
keymap("n", "<leader>s.", builtin.oldfiles, opts('[S]earch Recent Files ("." for repeat)'))
keymap("n", "<leader><leader>", builtin.buffers, opts("[ ] Find existing buffers"))
keymap(
	"n",
	"<leader>sp",
	":lua require'telescope'.extensions.project.project{sync_with_nvim_tree = true,}<CR>",
	opts("[S]earch [P]roject")
)

-- Slightly advanced example of overriding default behavior and theme
keymap("n", "<leader>/", function()
	-- You can pass additional configuration to Telescope to change the theme, layout, etc.
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, opts("[/] Fuzzily search in current buffer"))

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
keymap("n", "<leader>s/", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, opts("[S]earch [/] in Open Files"))

-- Shortcut for searching your Neovim configuration files
keymap("n", "<leader>sn", function()
	builtin.find_files({ cwd = "~/dotfyles/.config/nvim/" })
end, opts("[S]earch [N]eovim files"))

-- diagnostic
local diagnostic_goto = function(next, severity)
	local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
	severity = severity and vim.diagnostic.severity[severity] or nil
	return function()
		go({ severity = severity })
	end
end
keymap("n", "<leader>cd", vim.diagnostic.open_float, opts("Line Diagnostics"))
keymap("n", "]d", diagnostic_goto(true), opts("Next Diagnostic"))
keymap("n", "[d", diagnostic_goto(false), opts("Prev Diagnostic"))
keymap("n", "]e", diagnostic_goto(true, "ERROR"), opts("Next Error"))
keymap("n", "[e", diagnostic_goto(false, "ERROR"), opts("Prev Error"))
keymap("n", "]w", diagnostic_goto(true, "WARN"), opts("Next Warning"))
keymap("n", "[w", diagnostic_goto(false, "WARN"), opts("Prev Warning"))
keymap("n", "]h", diagnostic_goto(true, "HINT"), opts("Next Warning"))
keymap("n", "[h", diagnostic_goto(false, "HINT"), opts("Prev Warning"))

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
