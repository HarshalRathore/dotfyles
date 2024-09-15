return {
	"SmiteshP/nvim-navic",
	lazy = true,
	opts = function()
		-- function get_pretty_path()
		-- 	-- Get the current working directory and the current file path
		-- 	local navic = require("nvim-navic")
		-- 	-- Check if navic context is available
		-- 	local navic_location = ""
		-- 	if navic.is_available() then
		-- 		navic_location = navic.get_location()
		-- 	end
		-- 	local cwd = vim.fn.getcwd()
		-- 	local file_path = vim.fn.expand("%:p")
		--
		-- 	-- Remove the common working directory part to make the path relative
		-- 	local relative_path = file_path:gsub("^" .. cwd .. "/", "")
		-- 	if navic_location ~= "" then
		-- 		return relative_path .. " > " .. navic_location
		-- 	else
		-- 		return relative_path
		-- 	end
		-- end
		-- print(get_pretty_path())
		-- vim.o.winbar = get_pretty_path()

		local icons = require("utils.icons").icons
		return {
			separator = "  ", -- some other options: ' > ', '  ', ' ➜ ', '  ', ' ➤ ', '  ', '  '
			highlight = true,
			depth_limit = 5,
			lazy_update_context = true,
			icons = icons.kinds.nvchad,
		}
	end,
}
