return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        -- Install parsers asynchronously (no-op if already installed)
        require("nvim-treesitter").install({
            "bash", "c", "cpp", "css", "csv", "dart", "dockerfile",
            "git_config", "gitignore", "groovy", "hcl", "htmldjango",
            "html", "ini", "java", "javascript", "json", "lua",
            "markdown", "markdown_inline", "pem", "php", "python",
            "query", "requirements", "sql", "ssh_config", "terraform",
            "tmux", "toml", "tsx", "typescript", "vim", "vimdoc", "yaml",
        })

        -- Enable treesitter indentation
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                local ok = pcall(vim.treesitter.get_parser, vim.api.nvim_get_current_buf())
                if ok then
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
