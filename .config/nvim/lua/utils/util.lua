local M = {}

---@param buf number?
function M.bufremove(buf)
	buf = buf or 0
	buf = buf == 0 and vim.api.nvim_get_current_buf() or buf

	if vim.bo.modified then
		local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
		if choice == 0 or choice == 3 then -- 0 for <Esc>/<C-c> and 3 for Cancel
			return
		end
		if choice == 1 then -- Yes
			vim.cmd.write()
		end
	end

	for _, win in ipairs(vim.fn.win_findbuf(buf)) do
		vim.api.nvim_win_call(win, function()
			if not vim.api.nvim_win_is_valid(win) or vim.api.nvim_win_get_buf(win) ~= buf then
				return
			end
			-- Try using alternate buffer
			local alt = vim.fn.bufnr("#")
			if alt ~= buf and vim.fn.buflisted(alt) == 1 then
				vim.api.nvim_win_set_buf(win, alt)
				return
			end

			-- Try using previous buffer
			local has_previous = pcall(vim.cmd, "bprevious")
			if has_previous and buf ~= vim.api.nvim_win_get_buf(win) then
				return
			end

			-- Create new listed buffer
			local new_buf = vim.api.nvim_create_buf(true, false)
			vim.api.nvim_win_set_buf(win, new_buf)
		end)
	end
	if vim.api.nvim_buf_is_valid(buf) then
		pcall(vim.cmd, "bdelete! " .. buf)
	end
end

local winbar_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
	"alpha",
	"lir",
	"Outline",
	"spectre_panel",
	"toggleterm",
}

function M.statusline()
	if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
		return ""
	end

	local file_path = vim.api.nvim_eval_statusline("%F", {}).str
	-- local modified = vim.api.nvim_eval_statusline('%M', {}).str == '+' and '⊚' or ''
	local modified = vim.api.nvim_eval_statusline("%m", {}).str
	local buffer_number = vim.api.nvim_eval_statusline("%n", {}).str
	local last_change = vim.fn.strftime("%a, %b %d %Y - %H:%M", vim.fn.getftime(vim.fn.expand("%")))

	file_path = file_path:gsub("/", "  ")

	return " ["
		.. buffer_number
		.. "] "
		.. file_path
		.. " "
		.. "%*"
		.. " "
		.. modified
		.. "%*"
		.. "Modified: "
		.. last_change
end

function trim(s)
	return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

M.WinBarStatus = function()
	if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
		return ""
	end

	local file_path = vim.api.nvim_eval_statusline("%f", {}).str
	local cwd_path = vim.api.nvim_eval_statusline("%{fnamemodify(getcwd(), ':~')}", {}).str
	local cwd = cwd_path:match("([^/]+)$")
	local file_path_components = vim.split(file_path, "/")

	-- Iterate over the components and modify them
	for i, component in ipairs(file_path_components) do
		if component == "~" then
			file_path_components[i] = component
		elseif component ~= "~" and i == 1 then
			break
		elseif component == cwd then
			break
		else
			file_path_components[i] = string.sub(component, 1, 2)
		end
	end

	local formatted_path = table.concat(file_path_components, "/")
	local navic_location = require("nvim-navic").get_location()

	return formatted_path .. "  " .. navic_location
end

M.toggle_neotree = function()
	local curr_ft = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(0), "ft")
	local neo_tree_win_exists = nil
	for _, bufnr in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
		local ft = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(bufnr), "ft")
		if string.find(ft, "neo%-tree") then
			neo_tree_win_exists = true
			break
		else
		end
	end

	if string.find(curr_ft, "neo%-tree") then
		vim.cmd("wincmd p")
	else
		vim.cmd("Neotree focus")
	end
end

M.peek_neotree = function()
	--- Chcek if a buffer named neo-tree exists in any window at all in the current tab page
	local neo_tree_win_exists = nil
	for _, bufnr in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
		local ft = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(bufnr), "ft")
		if string.find(ft, "neo%-tree") then
			neo_tree_win_exists = true
			break
		else
		end
	end

	if neo_tree_win_exists == true then
		vim.cmd("Neotree close")
	else
		vim.cmd("Neotree")
		vim.cmd("wincmd p")
	end
end

return M
