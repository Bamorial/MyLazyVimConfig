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
