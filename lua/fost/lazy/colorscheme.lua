return {
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
            require('catppuccin').setup()
            vim.cmd.colorscheme "catppuccin"
            vim.api.nvim_set_hl(0, 'Normal', { bg = 'none'})
            vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none'})
            vim.api.nvim_set_hl(0, "LineNr", { fg = "#0088FF" }) -- Change to your preferred color
        end
    },
    -- {
    --     "morhetz/gruvbox",
    --     priority = 1000,
    --     config = function()
    --         vim.g.gruvbox_contrast_dark = "hard" -- Set the contrast to "hard"
    --         vim.cmd.colorscheme "gruvbox"
    --         vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    --         vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    --     end
    -- }
}
