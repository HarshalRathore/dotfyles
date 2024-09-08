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
		local fn = vim.fn
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
		local navic = require("nvim-navic")
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter" } },
				always_divide_middle = true,
			},
			sections = {
				lualine_a = { "mode" },
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
						"filename",
						symbols = {
							readonly = " ",
						},
					},
					{
						"navic",
						color_correction = "static",
						navic_opts = { highlight = true },
					},
				},
				lualine_x = {
					{
						require("noice").api.status.search.get,
						cond = require("noice").api.status.search.has,
						color = { fg = "grey" },
					},
					{
						get_active_lsp,
						icon = " ",
					},
					{ get_active_formatter },
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
				},
				lualine_y = {
					{ "filetype", icon_only = true },
				},
				lualine_z = {
					"progress",
					"location",
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = { "neo-tree", "lazy", "mason", "man", "quickfix" },
		})
	end,
}
