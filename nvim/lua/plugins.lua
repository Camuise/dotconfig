-- This module returns a table of plugin specs for lazy.nvim.
-- `lua/config/lazy.lua` will import this module via `{ import = "plugins" }`.
return { -- colorscheme
"Mofiqul/dracula.nvim", -- example completion plugin with options
{
    "saghen/blink.cmp",
    dependencies = {"rafamadriz/friendly-snippets"},
    version = "*",
    opts = {
        keymap = {
            preset = "super-tab",
            ["<Up>"] = {"select_prev", "fallback"},
            ["<Down>"] = {"select_next", "fallback"},
            ["<Tab>"] = {"select_next", "fallback"},
            ["<S-Tab>"] = {"select_prev", "fallback"},
            ["<C-b>"] = {"scroll_documentation_up", "fallback"},
            ["<C-f>"] = {"scroll_documentation_down", "fallback"},
            ["<C-k>"] = {"show_signature", "hide_signature", "fallback"}
        },
        appearance = {
            nerd_font_variant = "mono"
        },
        sources = {
            default = {"lsp", "path", "snippets", "buffer"}
        },
        fuzzy = {
            implementation = "prefer_rust_with_warning"
        },
        completion = {
            keyword = {
                range = "prefix"
            },
            menu = {
                draw = {
                    treesitter = {"lsp"}
                }
            },
            trigger = {
                show_on_trigger_character = true
            },
            documentation = {
                auto_show = true
            }
        },
        signature = {
            enabled = true
        }
    },
    opts_extend = {"sources.default"}
}, -- LSP / Mason
"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"}
