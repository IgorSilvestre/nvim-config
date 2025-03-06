return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require('nvim-treesitter.configs')
        config.setup({
            ensure_installed = { "lua", "jsonc", "javascript", "html", "typescript", "tsx", "svelte", "css", "go", "python" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

