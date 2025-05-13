return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp", -- For autocompletion capabilities
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        -- Capabilities for LSP servers (e.g., for autocompletion)
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        -- Default handler for all installed servers
        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
            end,
        })

        -- Example: Special configuration for `lua_ls`
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                },
            },
        })
    end,
}