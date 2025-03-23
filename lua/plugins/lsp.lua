return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup {
            ensure_installed = { "lua_ls", "clangd", "ts_ls", "pyright", "jdtls" },
        }
        require('lspconfig').lua_ls.setup{
            settings = {
                Lua = {
                    runtime = { version = "Lua 5.1" },
                    diagnostics = { globals = { "vim" } }
                }
            }
        }
        require('lspconfig').clangd.setup{}  -- C
        require('lspconfig').ts_ls.setup{}   -- TypeScript
        require('lspconfig').pyright.setup{} -- Python
        require('lspconfig').jdtls.setup{}   -- Java
    end
}
