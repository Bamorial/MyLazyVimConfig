return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.registries = opts.registries or { "github:mason-org/mason-registry" }
      vim.list_extend(opts.registries, { "github:Crashdummyy/mason-registry" })
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "roslyn" })
    end,
  },
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      -- Let the Roslyn server own file watching instead of Neovim's built-in
      -- watcher, so dotnet build/restore churn in bin/obj doesn't trigger a
      -- storm of didChangeWatchedFiles events on the client side.
      filewatching = "roslyn",
    },
  },
}
