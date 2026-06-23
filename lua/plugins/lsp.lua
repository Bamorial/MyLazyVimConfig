return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        virtual_lines = false,
      },
      inlay_hints = {
        exclude = { "vue", "cs" },
      },
      servers = {
        ts_ls = {
          enabled = false,
        },
        vtsls = {
          cmd = (function()
            local mason = vim.fn.stdpath("data") .. "/mason/packages/vtsls"
            local node = vim.fn.exepath("node")
            if node == "" then
              return nil
            end
            return {
              node,
              mason .. "/node_modules/@vtsls/language-server/bin/vtsls.js",
              "--stdio",
            }
          end)(),
        },
        omnisharp = {
          settings = {
            csharp = {
              maxProjectFileCountForDiagnosticAnalysis = 0,
              semanticHighlighting = {
                enabled = false,
              },
              suppressBuildAssetsNotification = true,
              suppressDotnetRestoreNotification = true,
            },
            dotnet = {
              backgroundAnalysis = {
                analyzerDiagnosticsScope = "none",
                compilerDiagnosticsScope = "none",
              },
              codeLens = {
                enableReferencesCodeLens = false,
                enableTestsCodeLens = false,
              },
              fileBasedApps = {
                enableAutomaticDiscovery = false,
              },
            },
            MsBuild = {
              LoadProjectsOnDemand = true,
            },
            RoslynExtensionsOptions = {
              EnableAnalyzersSupport = false,
              AnalyzeOpenDocumentsOnly = true,
              EnableImportCompletion = false,
            },
          },
        },
        omnisharp_mono = {
          enabled = false,
        },
      },
    },
  },
}
