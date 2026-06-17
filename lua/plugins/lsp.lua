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
          cmd = {
            "/home/veltanvlad/.nvm/versions/node/v22.17.1/bin/node",
            "/home/veltanvlad/.local/share/nvim/mason/packages/vtsls/node_modules/@vtsls/language-server/bin/vtsls.js",
            "--stdio",
          },
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
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
