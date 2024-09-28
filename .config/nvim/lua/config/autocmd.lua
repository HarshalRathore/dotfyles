---@diagnostic disable: unused-function
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

		-- local function get_highlight_groups(groups)
		-- 	local highlights = {}
		-- 	for _, group in ipairs(groups) do
		-- 		highlights[group] = vim.api.nvim_get_hl_by_name(group, true)
		-- 	end
		-- 	return highlights
		-- end
		-- local function set_highlight_groups(groups)
		-- 	for group, hl in pairs(groups) do
		-- 		vim.api.nvim_set_hl(0, group, hl)
		-- 	end
		-- end
		--
		-- -- Highlight groups to store
		-- local highlight_groups = {
		-- 	"NotifyINFOBorder",
		-- 	"NotifyINFOTitle",
		-- 	"NotifyINFOIcon",
		-- }
		--
		-- -- Store default highlight values
		-- local default_highlights = get_highlight_groups(highlight_groups)
		-- vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#ff7603", bold = true })
		-- vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#ff7603", bold = true })
		-- vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = "#ff7603", bold = true })
		local message = string.format("sourced init.lua and %s", vim.fn.expand("%:t"))
		vim.notify(message, vim.log.levels.INFO, {
			title = "AutoSourceInit",
		})
		-- vim.defer_fn(set_highlight_groups(default_highlights), 1000)
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
		"alpha",
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

vim.api.nvim_create_autocmd({ "FileType" }, {
	desc = "Set terminal keymap for django server",
	pattern = { "python" },
	callback = function()
		local function djangoServerTerm()
			local upward = vim.fs.dirname(vim.fs.find("manage.py", { upward = true })[1])
			local downward = vim.fs.dirname(vim.fs.find("manage.py", { downward = true })[1])
			local django_root = upward or downward
			local venv_path = vim.fs.dirname(vim.fs.find(".venv", { upward = true })[1])
			local activate_cmd = ""
			if vim.fn.filereadable(venv_path) == 1 then
				activate_cmd = "source " .. venv_path .. " && "
			end
			local cmd = activate_cmd .. "python " .. django_root .. "/manage.py runserver"
			local term = require("toggleterm.terminal").Terminal:new({
				cmd = cmd,
				dir = django_root,
				display_name = "DjangoServer",
				close_on_exit = false,
				direction = "float",
				winbar = {
					enabled = true,
					name_formatter = function(term) --  term: Terminal
						return term.name
					end,
				},
				open_mapping = false,
				float_opts = {
					border = "curved",
					title_pos = "center",
				},
			})
			term:toggle()
		end
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<leader>c/",
			"<cmd>lua djangoServerTerm()<CR>",
			{ noremap = true, silent = true, desc = "Start DjangoServer" }
		)
	end,
})

-- vim.api.nvim_create_autocmd({ "CursorHold" }, {
-- 	desc = "Silently clears inactive snippets when the cursor is idle to keep your code clean.",
-- 	callback = function()
-- 		local status_ok, luasnip = pcall(require, "luasnip")
-- 		if not status_ok then
-- 			return
-- 		end
-- 		if luasnip.expand_or_jumpable() then
-- 			-- ask maintainer for option to make this silent
-- 			-- luasnip.unlink_current()
-- 			vim.cmd([[silent! lua require("luasnip").unlink_current()]])
-- 		end
-- 	end,
-- })
