vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>ms', ':Mason<cr>', { noremap = true }) -- Open Mason

vim.api.nvim_set_keymap('i', '<silent><esc>', '<esc>:update<cr>', { noremap = true, silent = true }) -- Saves on exit insert mode !!

vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move highlighted line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move highlighted line up

vim.keymap.set("n", "J", "mzJ`z") -- join lines and keep cursor position
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down half a page and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up half a page and center

vim.keymap.set("n", "n", "nzzzv") -- keep cursor centered when searching
vim.keymap.set("n", "N", "Nzzzv") -- keep cursor centered when searching

-- Split vertically
vim.api.nvim_set_keymap("n", "<Leader>vs", ":vsplit<CR>", { noremap = true }) -- split
vim.api.nvim_set_keymap("n", "<Leader>vc", "<C-w>c", { noremap = true }) -- close
vim.api.nvim_set_keymap("n", "<Leader>h", "<C-w>h", { noremap = true }) -- move left
vim.api.nvim_set_keymap("n", "<Leader>l", "<C-w>l", { noremap = true }) -- move right


-- vim.keymap.set({ 'n', 'v' }, 'p', '"0p') -- Paste from the "0 register without overwriting it


-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

vim.keymap.set({ "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "v" }, "<leader>p", [["_p]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>") -- <ctrl-c> in insert mode to escape

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set({ 'n', 'v' }, '<space>la', vim.lsp.buf.code_action, opts) -- code action e.g. rename, add import

-- Append bottom line to current line (why would I need this??)
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

