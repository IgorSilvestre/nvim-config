return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "biome",
                "html",
                "tailwindcss",
                -- "pyright", types for python
                "pylsp",
                "svelte",
                "dockerls",
                "tsserver",
                "jsonls",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                ["pylsp"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.pylsp.setup {
                        capabilities = capabilities,
                        settings = {
                            pylsp = {
                                plugins = {
                                    pycodestyle = { enabled = false },
                                    -- pylint = { enabled = true },
                                    pyls_black = { enabled = true },
                                }
                            }
                        }
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
                ["tsserver"] = function()
                    require("lspconfig").tsserver.setup {
                        capabilities = capabilities,
                        on_attach = function(client, bufnr)
                            local ts_utils = require("nvim-lsp-ts-utils")

                            ts_utils.setup({})
                            ts_utils.setup_client(client)

                            local buf_map = function(mode, lhs, rhs, opts)
                                vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
                                    noremap = true, silent = true
                                })
                            end

                            buf_map("n", "<leader>ltf", ":TSLspOrganize<CR>")
                            buf_map("n", "<leader>ltr", ":TSLspRenameFile<CR>")
                            buf_map("n", "<leader>lti", ":TSLspImportAll<CR>")
                        end
                    }
                end
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })

        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {})
        vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, {})
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format) -- format code
    end
}
