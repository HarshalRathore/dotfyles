return {
	"mfussenegger/nvim-lint",
	enabled = true,
	event = "BufReadPre",
	dependencies = {
		{
			"williamboman/mason.nvim",
		},
	},

	opts = {
		linters_by_ft = {
			lua = { "luacheck" }, -- Use luacheck for Lua files
			markdown = { "markdownlint" }, -- Use markdownlint for Markdown files
			-- python = { "pylint" },
		},
		linters = {
			luacheck = {
				-- Configuration for luacheck
				args = { "--globals", "vim", "--no-unused" }, -- Example: ignore global `vim`, no unused variable warnings
			},
			markdownlint = {
				-- Configuration for markdownlint
				args = { "--disable", "MD013" }, -- Example: disable MD013 rule (line length)
			},
		},
	},

	config = function(_, opts)
		local M = {}

		local lint = require("lint")
		for name, linter in pairs(opts.linters) do
			if type(linter) == "table" and type(lint.linters[name]) == "table" then
				lint.linters[name] = vim.tbl_deep_extend("force", lint.linters[name], linter)
				if type(linter.prepend_args) == "table" then
					lint.linters[name].args = lint.linters[name].args or {}
					vim.list_extend(lint.linters[name].args, linter.prepend_args)
				end
			else
				lint.linters[name] = linter
			end
		end
		lint.linters_by_ft = opts.linters_by_ft

		function M.debounce(ms, fn)
			local timer = vim.uv.new_timer()
			return function(...)
				local argv = { ... }
				timer:start(ms, 0, function()
					timer:stop()
					vim.schedule_wrap(fn)(unpack(argv))
				end)
			end
		end

		function M.lint()
			local names = lint._resolve_linter_by_ft(vim.bo.filetype)

			if #names == 0 then
				vim.list_extend(names, lint.linters_by_ft["_"] or {})
			end

			vim.list_extend(names, lint.linters_by_ft["*"] or {})

			local ctx = { filename = vim.api.nvim_buf_get_name(0) }
			ctx.dirname = vim.fn.fnamemodify(ctx.filename, ":h")
			names = vim.tbl_filter(function(name)
				local linter = lint.linters[name]
				if not linter then
					print("Linter not found: " .. name, vim.log.levels.WARN)
				end
				return linter and not (type(linter) == "table" and linter.condition and not linter.condition(ctx))
			end, names)

			if #names > 0 then
				lint.try_lint(names)
			end
		end

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
			group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
			callback = M.debounce(100, M.lint),
		})
	end,
}
