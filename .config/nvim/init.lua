-- Global Settings
_G.icons = require("utils.icons").icons
_G.utils = require("utils.util")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy") -- Load lazy.nvim the NeoVim Plugin Manager
require("config.options") -- Import vim.opt.* settings from lua/config/options.lua
require("config.keymaps") -- Import key-mappings from lua/config/keymaps.lua
require("config.autocmd") -- Import custom autocmd commands
