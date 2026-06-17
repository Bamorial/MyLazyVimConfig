-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local function lsp_request(method, handler)
  return function()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = bufnr })

    for _, client in ipairs(clients) do
      if client.supports_method and client:supports_method(method) then
        return handler()
      end
    end

    local names = {}
    for _, client in ipairs(clients) do
      names[#names + 1] = client.name
    end

    local msg = "No attached LSP server supports " .. method .. " for this buffer."
    if #names > 0 then
      msg = msg .. " Attached: " .. table.concat(names, ", ") .. "."
    else
      msg = msg .. " No LSP servers are attached."
    end
    msg = msg .. " Try :LspInfo and :Mason."

    vim.notify(msg, vim.log.levels.WARN)
  end
end

map("n", "gd", lsp_request("textDocument/definition", vim.lsp.buf.definition), { desc = "Go to Definition" })
map("n", "gi", lsp_request("textDocument/implementation", vim.lsp.buf.implementation), { desc = "Go to Implementation" })
map("n", "gh", lsp_request("textDocument/hover", vim.lsp.buf.hover), { desc = "Hover Documentation" })

-- Jump list navigation (after e.g. `gd`)
map("n", "gb", "<cmd>normal! <C-o><cr>", { desc = "Jump back", silent = true })
map("n", "gB", "<cmd>normal! <C-i><cr>", { desc = "Jump forward", silent = true })
