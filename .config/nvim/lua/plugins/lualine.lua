return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			-- set an empty statusline till lualine loads
			vim.o.statusline = " "
		else
			-- hide the statusline on the starter page
			vim.o.laststatus = 0
		end
	end,
	opts = function()
		local virtual_env = function()
			-- only show virtual env for Python
			if vim.bo.filetype ~= "python" then
				return ""
			end

			local conda_env = os.getenv("CONDA_DEFAULT_ENV")
			local venv_path = os.getenv("VIRTUAL_ENV")

			if venv_path == nil then
				if conda_env == nil then
					return ""
				else
					return string.format(" %s", conda_env)
				end
			else
				local venv_name = vim.fn.fnamemodify(venv_path, ":t")
				return string.format(" %s", venv_name)
			end
		end

		local get_active_lsp = function()
			local msg = "!"
			local buf_ft = vim.api.nvim_get_option_value("filetype", {})
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			if next(clients) == nil then
				return msg
			end

			for _, client in ipairs(clients) do
				---@diagnostic disable-next-line: undefined-field
				local filetypes = client.config.filetypes
				if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
					return client.name
				end
			end
			return msg
		end

		local get_active_formatter = function()
			-- Check if 'conform' is available
			local status, conform = pcall(require, "conform")
			if not status then
				return "Conform not installed"
			end

			local lsp_format = require("conform.lsp_format")

			-- Get formatters for the current buffer
			local formatters = conform.list_formatters_for_buffer()
			if formatters and #formatters > 0 then
				local formatterNames = {}

				for _, formatter in ipairs(formatters) do
					table.insert(formatterNames, formatter)
				end

				return " " .. table.concat(formatterNames, " ")
			end

			-- Check if there's an LSP formatter
			local bufnr = vim.api.nvim_get_current_buf()
			local lsp_clients = lsp_format.get_format_clients({ bufnr = bufnr })

			if not vim.tbl_isempty(lsp_clients) then
				return " LSP Formatter"
			end

			return ""
		end
		-- Function to get a prettier path relative to the working directory
		local get_pretty_path = function()
			-- Get the current working directory and the current file path
			local cwd = vim.fn.getcwd()
			local file_path = vim.fn.expand("%:p")

			-- Remove the common working directory part to make the path relative
			local relative_path = file_path:gsub("^" .. cwd .. "/", "")

			-- Split the path into components
			local components = vim.split(relative_path, "/")

			-- If the path has more than 3 components, shorten it
			if #components > 3 then
				return "..." .. "/" .. table.concat(vim.list_slice(components, #components - 2, #components), "/")
			else
				return relative_path
			end
		end
		local bottomSeparators = { left = "", right = "" }
		local topSeparators = { left = "", right = "" }
		local emptySeparators = { left = "", right = "" }
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter" } },
				always_divide_middle = true,
				component_separators = { left = "", right = "" },
				section_separators = bottomSeparators,
				ignore_focus = {
					"DressingInput",
					"DressingSelect",
				},
			},
			sections = {
				lualine_a = { { "mode", icon = "" } },
				lualine_b = {
					{
						"branch",
						fmt = function(name, _)
							-- truncate branch name in case the name is too long
							return string.sub(name, 1, 20)
						end,
					},
					{
						virtual_env,
						color = { fg = "grey" },
					},
				},
				lualine_c = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = {
							error = " ",
							warn = " ",
							hint = " ",
							info = " ",
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{
						"filename",
						path = 1,
						symbols = {
							readonly = " ",
						},
					},
				},
				lualine_x = {
					-- stylua: ignore
					{
						-- gives last key 
						function() return require("noice").api.status.command.get() end,
						cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
						color = { fg = "#ff9e64" },
					},
					{
						-- gives recording macro
						function()
							local reg = vim.fn.reg_recording()
							if reg == "" then
								return ""
							end -- not recording
							return "recording @" .. reg
						end,
						color = { fg = "#c099ff" },
					},
					{
						get_active_lsp,
						icon = " ",
						on_click = function()
							vim.cmd("LspInfo")
						end,
					},
					{
						get_active_formatter,
						on_click = function()
							vim.cmd("ConformInfo")
						end,
					},
					{
						"diff",
						symbols = {
							added = icons.git.add_square_fill,
							modified = icons.git.modified,
							removed = icons.git.delete_square_fill,
						},
					},
				},
				lualine_y = {
					{
						function()
							local words = vim.fn.wordcount()["words"]
							return " " .. words
						end,
						cond = function()
							local ft = vim.opt_local.filetype:get()
							local count = {
								latex = true,
								tex = true,
								text = true,
								markdown = true,
								vimwiki = true,
							}
							return count[ft] ~= nil
						end,
					},
					{ "progress" },
				},
				lualine_z = {
					{ "location" },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			extensions = { "neo-tree", "lazy", "mason", "man", "quickfix" },
		})
	end,
}
