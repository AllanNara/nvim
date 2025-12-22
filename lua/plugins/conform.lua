return {
  "stevearc/conform.nvim",
  opts = {
    -- Configurar formateadores por tipo de archivo
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      sh = { "shfmt" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
      filter = function(buf)
        return vim.bo[buf].filetype == "sh"
      end,
    },
  },
}
