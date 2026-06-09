return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    event = "BufReadPre",
    dependencies = { "nvim-treesitter" },
    config = function()
        require("nvim-treesitter-textobjects").setup({
            select = {
                lookahead = true,
                selection_modes = {
                    ["@parameter.outer"] = "v",
                    ["@function.outer"] = "V",
                    ["@class.outer"] = "V",
                },
                include_surrounding_whitespace = false,
            },
            move = {
                set_jumps = true,
            },
        })

        -- Textobject keymaps (new API requires manual mapping)
        local select_textobject = require("nvim-treesitter-textobjects.select")
        vim.keymap.set({ "x", "o" }, "af", function()
            select_textobject.select_textobject("@function.outer", "textobjects")
        end, { desc = "Around function" })
        vim.keymap.set({ "x", "o" }, "if", function()
            select_textobject.select_textobject("@function.inner", "textobjects")
        end, { desc = "Inside function" })
        vim.keymap.set({ "x", "o" }, "ac", function()
            select_textobject.select_textobject("@class.outer", "textobjects")
        end, { desc = "Around class" })
        vim.keymap.set({ "x", "o" }, "ic", function()
            select_textobject.select_textobject("@class.inner", "textobjects")
        end, { desc = "Inside class" })
        vim.keymap.set({ "x", "o" }, "ap", function()
            select_textobject.select_textobject("@parameter.outer", "textobjects")
        end, { desc = "Around parameter" })
        vim.keymap.set({ "x", "o" }, "ip", function()
            select_textobject.select_textobject("@parameter.inner", "textobjects")
        end, { desc = "Inside parameter" })
    end,
}
