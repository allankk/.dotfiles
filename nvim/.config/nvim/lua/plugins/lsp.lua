return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",          -- LSP manager
    "williamboman/mason-lspconfig.nvim" -- Integration with lspconfig
  },
  config = function()
    -- Set up Mason and Mason LSPconfig
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = {
            jdtls
        },
        handlers = {
            function(server_name) -- default handler (optional)
                if server_name ~= 'jdtls' then 
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end
            end
        }
    })

    ---- Require the lspconfig module
    --local lspconfig = require("lspconfig")

    ---- Java LSP setup
    --lspconfig.jdtls.setup {
    --  cmd = { "jdtls" },
    --  root_dir = function(fname)
    --    return lspconfig.util.root_pattern('.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle')(fname) or vim.fn.getcwd()
    --  end,
    --  settings = {
    --    java = {
    --      eclipse = {
    --        downloadSources = true,
    --      },
    --      configuration = {
    --        updateBuildConfiguration = "interactive",
    --      },
    --      maven = {
    --        downloadSources = true,
    --      },
    --      implementationsCodeLens = {
    --        enabled = true,
    --      },
    --      referencesCodeLens = {
    --        enabled = true,
    --      },
    --      references = {
    --        includeDecompiledSources = true,
    --      },
    --      inlayHints = {
    --        parameterNames = {
    --          enabled = "all", -- literals, all, none
    --        },
    --      },
    --    },
    --  },
    --}

  end
}

