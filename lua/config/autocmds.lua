-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local explorer_follow_group = vim.api.nvim_create_augroup("snacks_explorer_follow_file", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  group = explorer_follow_group,
  callback = function(event)
    if vim.bo[event.buf].buftype ~= "" or vim.api.nvim_buf_get_name(event.buf) == "" then
      return
    end

    vim.schedule(function()
      if not vim.api.nvim_buf_is_valid(event.buf) or vim.api.nvim_get_current_buf() ~= event.buf then
        return
      end

      local explorers = Snacks.picker.get({ source = "explorer" })
      if explorers[1] then
        Snacks.explorer.reveal({ buf = event.buf })
      end
    end)
  end,
})
