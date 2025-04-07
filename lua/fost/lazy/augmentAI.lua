return {
  {
    "augmentcode/augment.vim",
    config = function()
      vim.g.augment_workspace_folders = {
        '/Users/igorsilvestre/geomais/geomais-node-api',
        '/Users/igorsilvestre/.config/nvim',
        '/Users/igorsilvestre/geomais/geomais-frontend-monorepo',
        '/Users/igorsilvestre/geomais/geomais-export-api',
        '/home/is/gitrepos/geomais-export-api',
        '/home/is/gitrepos/geomais-node-api',
        '/home/is/gitrepos/geomais-frontend-monorepo',
        '/home/is/gitrepos/changemaster'
      }

      local keymap = vim.keymap.set

      -- Open the chat window
      keymap({ "n", "v" }, "<leader>ac", "<cmd>Augment chat<CR>", { desc = "Open Augment Chat" })

      -- Toggle chat window visibility
      keymap("n", "<leader>at", "<cmd>Augment chat-toggle<CR>", { desc = "Toggle Augment Chat" })

      -- (Optional) Start a new chat session
      keymap("n", "<leader>as", "<cmd>Augment chat-new<CR>", { desc = "Start Augment Chat" })
    end,
  },
}
