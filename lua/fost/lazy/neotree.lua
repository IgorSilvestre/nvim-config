return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set({ 'n', 'v' }, '<leader>e', ':Neotree filesystem reveal left <CR>')
        vim.keymap.set({ 'n', 'v' }, '<leader>b', ':Neotree buffers <CR>')
        vim.keymap.set({ 'n', 'v' }, '<leader>gf', ':Neotree float git_status <CR>')
    end
}



--[[
window = {
mappings = {
["<bs>"] = "navigate_up",
["."] = "set_root",
["H"] = "toggle_hidden",
["/"] = "fuzzy_finder",
["D"] = "fuzzy_finder_directory",
["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
-- ["D"] = "fuzzy_sorter_directory",
["f"] = "filter_on_submit",
["<c-x>"] = "clear_filter",
["[g"] = "prev_git_modified",
["]g"] = "next_git_modified",
["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
["oc"] = { "order_by_created", nowait = false },
["od"] = { "order_by_diagnostics", nowait = false },
["og"] = { "order_by_git_status", nowait = false },
["om"] = { "order_by_modified", nowait = false },
["on"] = { "order_by_name", nowait = false },
["os"] = { "order_by_size", nowait = false },
["ot"] = { "order_by_type", nowait = false },
-- ['<key>'] = function(state) ... end,
},
fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
["<down>"] = "move_cursor_down",
["<C-n>"] = "move_cursor_down",
["<up>"] = "move_cursor_up",
["<C-p>"] = "move_cursor_up",
-- ['<key>'] = function(state, scroll_padding) ... end,
},
},

commands = {} -- Add a custom command or override a global one using the same function name
},
buffers = {
follow_current_file = {
enabled = true, -- This will find and focus the file in the active buffer every time
--              -- the current file is changed while the tree is open.
leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
},
group_empty_dirs = true, -- when true, empty folders will be grouped together
show_unloaded = true,
window = {
mappings = {
["bd"] = "buffer_delete",
["<bs>"] = "navigate_up",
["."] = "set_root",
["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
["oc"] = { "order_by_created", nowait = false },
["od"] = { "order_by_diagnostics", nowait = false },
["om"] = { "order_by_modified", nowait = false },
["on"] = { "order_by_name", nowait = false },
["os"] = { "order_by_size", nowait = false },
["ot"] = { "order_by_type", nowait = false },
}
},
},
git_status = {
window = {
position = "float",
mappings = {
["A"]  = "git_add_all",
["gu"] = "git_unstage_file",
["ga"] = "git_add_file",
["gr"] = "git_revert_file",
["gc"] = "git_commit",
["gp"] = "git_push",
["gg"] = "git_commit_and_push",
["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
["oc"] = { "order_by_created", nowait = false },
["od"] = { "order_by_diagnostics", nowait = false },
["om"] = { "order_by_modified", nowait = false },
["on"] = { "order_by_name", nowait = false },
["os"] = { "order_by_size", nowait = false },
["ot"] = { "order_by_type", nowait = false },
}
}
]]
