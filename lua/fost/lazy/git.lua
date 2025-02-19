return {
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
              toggle_current_line_blame = true,
            })
            vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {})
            vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', {})
        end
    },
}
