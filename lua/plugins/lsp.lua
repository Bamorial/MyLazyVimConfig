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
        -- Replaced by roslyn.nvim (see lua/plugins/csharp.lua): OmniSharp eagerly
        -- analyzes and publishes diagnostics for the whole solution on startup
        -- (65k+ notifications on a mid-size solution) and its memory grows
        -- unbounded over a session, which is what was causing the freezes.
        omnisharp = {
          enabled = false,
        },
        omnisharp_mono = {
          enabled = false,
        },
      },
    },
  },
}
