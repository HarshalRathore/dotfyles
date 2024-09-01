return {
	-- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = { "VimEnter", "VeryLazy" }, -- Sets the loading event to 'VimEnter'
	opts = {
		win = {
			border = "rounded", -- none, single, double, shadow, rounded
		},
	},
	config = function(_, opts) -- This is the function that runs, AFTER loading
		require("which-key").setup(opts)
	end,
}
