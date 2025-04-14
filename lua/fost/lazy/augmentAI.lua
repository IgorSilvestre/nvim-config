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
        ['fost'] = {
          '/home/is/gitrepos/scrape_farmaciapopular',
          '/home/is/gitrepos/europods-frontend'
        },
        ['popos-geomais'] = {
          '/home/is/gitrepos/geomais-export-api',
          '/home/is/gitrepos/geomais-node-api',
          '/home/is/gitrepos/geomais-frontend-monorepo',
          '/home/is/gitrepos/changemaster',
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
