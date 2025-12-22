-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Requiere cmp y ajusta el mapeo de teclas
-- Requiere Neovim 0.8+
--
vim.api.nvim_create_autocmd("FileType", {
  pattern = "dap-repl",
  callback = function()
    -- Evita que Lualine aplique su winbar en este buffer
    vim.opt_local.winbar = nil
  end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    if vim.bo.filetype == "dap-repl" then
      vim.opt_local.winbar = nil
    end
  end,
})
