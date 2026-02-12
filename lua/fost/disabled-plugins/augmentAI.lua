return {
  {
    "augmentcode/augment.vim",
    -- lazy = true,
    config = function()
      local hostname = vim.fn.hostname()
      local workspace_folders = {
        ['macbook'] = {
          '/Users/igorsilvestre/geomais/geomais-node-api',
          '/Users/igorsilvestre/.config/nvim',
          '/Users/igorsilvestre/geomais/geomais-frontend-monorepo',
          '/Users/igorsilvestre/geomais/geomais-export-api',
        },
        ['dunas'] = {
          '/home/dunas/geomais/geomais-export-api',
          '/home/dunas/geomais/geomais-node-api',
          '/home/dunas/geomais/geomais-frontend-monorepo',
          '/home/dunas/geomais/geomais-rusty-vts',
          '/home/dunas/.config/nvim',
        }
      }
      vim.g.augment_workspace_folders = workspace_folders[hostname] or {}

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
