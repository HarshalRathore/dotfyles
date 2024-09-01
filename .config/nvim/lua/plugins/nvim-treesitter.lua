return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPre",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash", "tmux", "python", },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<leader>,",
                    node_incremental = "<leader>,",
                    scope_incremental = false,
                    node_decremental = "<leader>.",
                },
            },
            -- textobjects = {
            --     swap = {
            --         enable = true,
            --         swap_next = {
            --             ["<leader>na"] = "@parameter.inner", -- swap parameters/argument with next
            --             ["<leader>nm"] = "@function.outer",  -- swap function with next
            --         },
            --         swap_previous = {
            --             ["<leader>pa"] = "@parameter.inner", -- swap parameters/argument with prev
            --             ["<leader>pm"] = "@function.outer",  -- swap function with previous
            --         },
            --     },
            --     move = {
            --         enable = true,
            --         set_jumps = true, -- whether to set jumps in the jumplist
            --         goto_next_start = {
            --             ["]f"] = { query = "@call.outer", desc = "Next function call start" },
            --             ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
            --             ["]c"] = { query = "@class.outer", desc = "Next class start" },
            --             ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
            --             ["]l"] = { query = "@loop.outer", desc = "Next loop start" },

            --             -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
            --             -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
            --             ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
            --             ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
            --         },
            --         goto_next_end = {
            --             ["]F"] = { query = "@call.outer", desc = "Next function call end" },
            --             ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
            --             ["]C"] = { query = "@class.outer", desc = "Next class end" },
            --             ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
            --             ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
            --         },
            --         goto_previous_start = {
            --             ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
            --             ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
            --             ["[c"] = { query = "@class.outer", desc = "Prev class start" },
            --             ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
            --             ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
            --         },
            --         goto_previous_end = {
            --             ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
            --             ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
            --             ["[C"] = { query = "@class.outer", desc = "Prev class end" },
            --             ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
            --             ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
            --         },
            --     },
            --     select = {
            --         enable = true,

            --         -- Automatically jump forward to textobj, similar to targets.vim
            --         lookahead = true,

            --         keymaps = {
            --             -- You can use the capture groups defined in textobjects.scm
            --             ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
            --             ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
            --             ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
            --             ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

            --             ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
            --             ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

            --             ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
            --             ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

            --             ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
            --             ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

            --             ["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
            --             ["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

            --             ["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
            --             ["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

            --             ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
            --             ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
            --         },
            --         -- You can choose the select mode (default is charwise 'v')
            --         --
            --         -- Can also be a function which gets passed a table with the keys
            --         -- * query_string: eg '@function.inner'
            --         -- * method: eg 'v' or 'o'
            --         -- and should return the mode ('v', 'V', or '<c-v>') or a table
            --         -- mapping query_strings to modes.
            --         selection_modes = {
            --             ['@parameter.outer'] = 'v', -- charwise
            --             ['@function.outer'] = 'v',  -- linewise
            --             ['@class.outer'] = '<c-v>', -- blockwise
            --         },
            --         -- If you set this to `true` (default is `false`) then any textobject is
            --         -- extended to include preceding or succeeding whitespace. Succeeding
            --         -- whitespace has priority in order to act similarly to eg the built-in
            --         -- `ap`.
            --         --
            --         -- Can also be a function which gets passed a table with the keys
            --         -- * query_string: eg '@function.inner'
            --         -- * selection_mode: eg 'v'
            --         -- and should return true or false
            --         include_surrounding_whitespace = true,
            --     },
            -- },
        })
    end,
}
