local set = vim.api.nvim_set_hl
--
local function apply_graphite_focus()
  --   -- Fondo general
  --   set(0, "Normal", { bg = "#1e1e1e", fg = "#c5c8c6" })
  --   set(0, "NormalNC", { bg = "#1e1e1e" })
  --
  --   -- Línea actual
  --   set(0, "CursorLine", { bg = "#2a2a2a" })
  --   set(0, "CursorLineNr", { fg = "#00bfff", bold = true })
  --
  --   -- Números de línea
  --   set(0, "LineNr", { fg = "#5c6370" })
  --   set(0, "LineNrAbove", { fg = "#5c6370" })
  --   set(0, "LineNrBelow", { fg = "#5c6370" })
  --
  --   -- Colores semánticos comunes
  --   set(0, "Comment", { fg = "#7f848e", italic = true })
  --   set(0, "Keyword", { fg = "#ffb86c" })
  --   set(0, "String", { fg = "#98c379" })
  --   set(0, "Function", { fg = "#61afef" })
  --   set(0, "Error", { fg = "#e06c75", bold = true })
  --   set(0, "WarningMsg", { fg = "#d19a66", bold = true })
end

-- vim.api.nvim_create_autocmd({ "ColorScheme", "BufEnter", "BufWinEnter" }, {
--   pattern = "*",
--   callback = function()
--     apply_graphite_focus()
--   end,
-- })


