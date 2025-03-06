-- live_grep only works with ripgrep installed (brew install ripgrep)

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" }, -- Optional: ignore unnecessary files
        layout_strategy = 'vertical',
        path_display = { "truncate" },
      },
      -- pickers = {
      --   find_files = { previewer = false },
      --   git_files = { previewer = false },
      --   live_grep = { previewer = true },
      --   grep_string = { previewer = false },
      --   buffers = { previewer = false },
      --   help_tags = { previewer = false },
      --   git_branches = { previewer = false },
      -- }
    }

    -- KEYMAPS
    vim.keymap.set('n', '<leader>sf', builtin.find_files, {}) -- search all files
    vim.keymap.set('n', '<leader>gs', builtin.git_files, {})  -- search only git files
    vim.keymap.set('n', '<leader>st', function()
      builtin.grep_string({ search = vim.fn.input('grep > ') })
    end)
    -- search for string in current working directory
    vim.keymap.set('n', '<leader>sb', builtin.buffers, {}) -- Lists open buffers in current neovim instance
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})

    vim.keymap.set('n', '<leader>gb', builtin.git_branches, {}) -- Lists git branches

    vim.keymap.set('n', '<leader>ss', builtin.live_grep, {})    -- (ss for super search) search for string in all files
  end
}
