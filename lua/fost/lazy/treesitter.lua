return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').setup({
            ensure_installed = { "c", "lua", "jsonc", "javascript", "html", "typescript", "tsx", "svelte", "css", "go", "python" },
        })
    end
}

