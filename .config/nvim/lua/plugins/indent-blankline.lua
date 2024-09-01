return {
	{
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		event = "User FilePost",
		-- See `:help ibl`
		main = "ibl",
		opts = {
			indent = { char = "│", highlight = "IblChar" },
			scope = { char = "│", highlight = "IblScopeChar" },
		},
		config = function(_, opts)
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
			require("ibl").setup(opts)
		end,
	},
}

