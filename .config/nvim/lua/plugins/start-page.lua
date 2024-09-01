return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- require'alpha'.setup(require'alpha.themes.startify'.config)
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local icons = require("utils.icons").icons
		-- local datetime = os.date(" %H:%M. ")
		local datetime = tonumber(os.date(" %H "))
		local total_plugins = require("lazy").stats().count
		local stats = require("lazy").stats()

		local function button(sc, txt, keybind, keybind_opts)
			local b = dashboard.button(sc, txt, keybind, keybind_opts)
			b.opts.hl_shortcut = "MiniIconsPurple"
			return b
		end
		local get_header = require("utils.startpage-headers")
		dashboard.section.header.val = get_header(13, false) -- (index, bool) index of ascii art bool if you want random or not eg: (30, false)

		dashboard.section.buttons.val = {
			button("e", icons.ui.new_file .. "  New file", ":ene <BAR> startinsert <CR>"),
			button("f", icons.ui.files .. "  Find Files", ":Telescope find_files <CR>"),
			button(
				"p",
				icons.git.repo .. " Find project",
				":lua require('telescope').extensions.projects.projects()<CR>"
			),
			button("o", icons.ui.restore .. "  Recent Files", "<cmd>Telescope oldfiles<cr>"),
			button("t", icons.kinds.nvchad.Text .. " Find text", ":Telescope live_grep <CR>"),
			button("c", " " .. " Neovim config", "<cmd>e ~/.config/nvim/ | cd %:p:h<cr>"),
			button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
			button("q", icons.ui.close .. "  Quit NVIM", ":qa<CR>"),
		}

		local function footer()
			local footer_datetime = os.date("  %m-%d-%Y   %H:%M:%S")
			local version = vim.version()
			local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			return footer_datetime .. "   Plugins " .. total_plugins .. nvim_version_info
		end

		-- Append the footer string below the ASCII art
		table.insert(dashboard.section.header.val, "")
		-- table.insert(dashboard.section.header.val, "")
		-- table.insert(dashboard.section.header.val, "")
		table.insert(dashboard.section.header.val, footer())

		-- dashboard.section.header.opts.hl = "Function"
		dashboard.section.buttons.opts.hl = "Conceal"
		dashboard.section.footer.opts.hl = "Conceal"

		dashboard.section.footer.val = require("alpha.fortune")()

		local greeting
		-- Determine the appropriate greeting based on the hour
		if datetime >= 0 and datetime < 6 then
			greeting = "Dreaming..󰒲 󰒲 "
		elseif datetime >= 6 and datetime < 12 then
			greeting = "🌅 Hi Harshal, Good Morning ☀️"
		elseif datetime >= 12 and datetime < 18 then
			greeting = "🌞 Hi Harshal, Good Afternoon ☕️"
		elseif datetime >= 18 and datetime < 21 then
			greeting = "🌆 Hi Harshal, Good Evening 🌙"
		else
			greeting = "Hi Harshal, it's getting late, get some sleep 😴"
		end

		local bottom_section = {
			type = "text",
			val = greeting,
			opts = {
				position = "center",
			},
		}

		local section = {
			header = dashboard.section.header,
			bottom_section = bottom_section,
			buttons = dashboard.section.buttons,
			footer = dashboard.section.footer,
		}

		local opts = {
			layout = {
				{ type = "padding", val = 1 },
				section.header,
				{ type = "padding", val = 2 },
				section.buttons,
				{ type = "padding", val = 1 },
				section.bottom_section,
				{ type = "padding", val = 1 },
				section.footer,
			},
		}
		dashboard.opts.opts.noautocmd = true

		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				once = true,
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		alpha.setup(opts)

		-- don't show status line in alpha dashboard
		vim.api.nvim_create_autocmd({ "User" }, {
			pattern = { "AlphaReady" },
			callback = function()
				vim.cmd([[
      set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
    ]])
			end,
		})
	end,
}
