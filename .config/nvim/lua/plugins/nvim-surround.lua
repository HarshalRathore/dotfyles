return {
    -- see :h nvim-surround.usage for usage
    -- see :h nvim-surround.configuration for configuration
    -- see https://github.com/kylechui/nvim-surround for more details
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}
