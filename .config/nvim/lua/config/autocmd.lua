-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_augroup("AutoSourceInit", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	group = "AutoSourceInit",
	desc = "Source init.lua & the current file when writing in any file in ~/dotfyles/.config/nvim/*",
	pattern = vim.fn.expand("~") .. "/dotfyles/.config/nvim/*",
	callback = function()
		for name, _ in pairs(package.loaded) do
			if name:match("^user") then
				package.loaded[name] = nil
			end
		end
		dofile(vim.env.MYVIMRC)
		vim.cmd("source %")
		vim.notify("sourced init.lua and " .. vim.fn.expand("%:t"))
	end,
})

if vim.env.TMUX ~= nil then
	vim.api.nvim_create_autocmd({ "BufReadPre", "FocusGained" }, {
		desc = "Rename tmux window to current buffer file name",
		pattern = "*",
		callback = function()
			local current_file = vim.fn.expand("%:t")
			local tmux_command = string.format("tmux rename-window '%s'", current_file)
			vim.fn.system(tmux_command)
		end,
	})

	vim.api.nvim_create_autocmd({ "VimLeave", "FocusLost" }, {
		desc = "Set automatic-rename on after leaving nvim or loosing focus",
		pattern = "*",
		callback = function()
			vim.fn.system("tmux set-window-option automatic-rename on")
		end,
	})
end

vim.api.nvim_create_autocmd({ "FileType" }, {
	desc = "Sets pressing q key to exit the buffer for following FileType",
	pattern = {
		"netrw",
		"Jaq",
		"qf",
		"git",
		"help",
		"man",
		"lspinfo",
		"oil",
		"spectre_panel",
		"lir",
		"DressingSelect",
		"tsplayground",
		"query",
		"",
	},
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
	end,
})

vim.api.nvim_create_autocmd({ "VimResized" }, {
	desc = "Equally resize windows whenever terminal's window-size changes",
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	desc = "Checks for changes in buffers from outside Vim when a buffer window is entered",
	pattern = { "*" },
	callback = function()
		vim.cmd("checktime")
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	desc = "Set wrap and spell for FileTypes like gitcommit, markdown, NeogitCommitMessage",
	pattern = { "gitcommit", "markdown", "NeogitCommitMessage" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

vim.api.nvim_create_autocmd({ "CursorHold" }, {
	desc = "Silently clears inactive snippets when the cursor is idle to keep your code clean.",
	callback = function()
		local status_ok, luasnip = pcall(require, "luasnip")
		if not status_ok then
			return
		end
		if luasnip.expand_or_jumpable() then
			-- ask maintainer for option to make this silent
			-- luasnip.unlink_current()
			vim.cmd([[silent! lua require("luasnip").unlink_current()]])
		end
	end,
})
