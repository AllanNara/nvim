-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.autocmds")
require("config.lazy")
require("config.colorscheme_filter")
require("config.highlights")
require("config.dapui_titles")
require("oil").setup()
-- require("modules.custom_winbar").setup()
-- require("config.terminal")
vim.api.nvim_set_keymap("t", "<C-n>", "<C-\\><C-n>", { noremap = true })
vim.filetype.add({
  extension = {
    conf = "conf",
    env = "dotenv",
    handlebars = "html",
  },
  filename = {
    [".env"] = "dotenv",
  },
  pattern = {
    [".*%.handlebars"] = "html",
    [".?env.*"] = "dotenv",
  },
})
vim.g.autoformat = false

vim.keymap.set("n", "<leader>F", function()
  require("conform").format({
    async = false,
    lsp_fallback = true,
  }, function(err)
    if err then
      vim.notify("Formatting failed: " .. err, vim.log.levels.ERROR)
    else
      vim.notify("Archivo formateado", vim.log.levels.INFO)
    end
  end)
end, { desc = "Formatear archivo con conform" })

vim.keymap.set("v", "<leader>F", function()
  local conform = require("conform")
  local start_pos = vim.api.nvim_buf_get_mark(0, "<")
  local end_pos = vim.api.nvim_buf_get_mark(0, ">")

  conform.format({
    range = { start = start_pos, ["end"] = end_pos },
    async = false,
    lsp_fallback = true,
  }, function(err)
    if err then
      vim.notify("Formatting failed: " .. err, vim.log.levels.ERROR)
    else
      vim.notify("Formatting applied to selection", vim.log.levels.INFO)
    end
  end)
end, { desc = "Format visual selection with conform" })

vim.keymap.set({ "i", "x", "n", "s" }, "<C-a>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
  if vim.bo.modified then
    local before = vim.api.nvim_buf_get_changedtick(0)
    vim.cmd("write")
    local after = vim.api.nvim_buf_get_changedtick(0)
    local saved = (after > before)

    if saved then
      local msg = "File saved"
      vim.notify(msg, vim.log.levels.INFO, { title = "Save" })
    end
  else
    vim.cmd("write")
  end
end, { desc = "Save file if modified", noremap = true, remap = false })

vim.opt_local.spell = false
vim.opt.spell = false

vim.keymap.set("n", "<leader>fd", "<cmd>Dashboard<CR>", { desc = "Abrir Dashboard (dashboard-nvim)" })
vim.keymap.set("n", "<leader>r", function()
  require("telescope.builtin").oldfiles({ cwd_only = false })
end, { desc = "Recent files" })

vim.keymap.set("n", "<C-n>", ":bp | bd#<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<C-o>", LazyVim.pick("files"), { desc = "Pick files" })
