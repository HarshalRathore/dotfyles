return {
	-- Read :h comment.config for more info.
	-- `gcc` - Toggles the current line using linewise comment
	-- `gbc` - Toggles the current line using blockwise comment
	"numtostr/comment.nvim",
	event = "BufReadPre",
	opts = {
		-- add any options here
	},
}
