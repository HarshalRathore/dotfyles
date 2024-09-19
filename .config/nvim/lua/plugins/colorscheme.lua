return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		enabled = false,
		config = function()
			require("kanagawa").setup({
				compile = false,
			})
			vim.cmd("colorscheme kanagawa-wave")
			local colors = require("kanagawa.colors").setup()
			local theme = colors.theme
			local CustomColors = {
				-- NvChad like Telescope Colorscheme
				TelescopeTitle = { fg = theme.ui.special, bold = true },
				TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
				TelescopePromptNormal = { bg = theme.ui.bg_p1 },
				TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
				TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
				TelescopePreviewNormal = { bg = theme.ui.bg_dim },
				TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

				Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
				PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
				PmenuSbar = { bg = theme.ui.bg_m1 },
				PmenuThumb = { bg = theme.ui.bg_p2 },
			}

			for hl, col in pairs(CustomColors) do
				vim.api.nvim_set_hl(0, hl, col)
			end
		end,
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
		lazy = false,
		config = function(_, opts)
			-- require("tokyonight").setup()
			-- vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		-- enalbed = false,
		config = function()
			vim.cmd("colorscheme oxocarbon")
		end,
	},
	{
		"shaunsingh/nord.nvim",
		enabled = false,
		config = function()
			require("nord").set()
		end,
	},
}
