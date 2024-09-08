return {
	"stevanmilic/nvim-lspimport",
	config = function(_, opts)
		local fixImport = require("lspimport").import
		vim.keymap.set("n", "<leader>ci", fixImport, { noremap = true, silent = true })
	end,
}
