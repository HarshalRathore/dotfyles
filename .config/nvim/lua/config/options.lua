-- Personal setting options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 999
-- Decrease update time
vim.opt.updatetime = 250
-- Enable break indent
vim.opt.breakindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = "a"
vim.opt.inccommand = "split"
vim.opt.cursorline = true
-- vim.opt.showmode = false
-- Save undo history
vim.opt.undofile = true
vim.opt.timeoutlen = 300
-- Enable list mode
vim.opt.list = true

-- Customize listchars
vim.opt.listchars = {
	tab = "→ ", -- Tab is shown as an arrow followed by a space
	trail = "·", -- Trailing spaces are shown as
	nbsp = "¤", -- Non-breakable spaces are shown as a currency sign
	eol = "¶", -- End of line is shown as a paragraph sign
}

vim.o.winbar = "%{%v:lua.require'utils.util'.WinBarStatus()%}"
