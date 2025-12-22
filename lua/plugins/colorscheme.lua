return {
  {
    "ellisonleao/gruvbox.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("gruvbox").setup({
    --     contrast = "hard",
    --     -- transparent_mode = true,
    --   })
    --   vim.cmd.colorscheme("gruvbox")
    --
    --   -- vim.api.nvim_set_hl(0, "Visual", { bg = "#ffb86b" })
    --   vim.api.nvim_set_hl(0, "Search", { bg = "#b29130", fg = "#ce7e00", bold = true })
    --   vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#e35353", bg = "#000000", bold = true })
    --   vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#eeeeee", bg = "#000000", bold = false })
    --   vim.api.nvim_set_hl(0, "FlashCurrent", { fg = "#f3f6f4", bg = "#000000", bold = false })
    --   vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#2a1e17" })
    --   vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
    --   vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
    -- end,
  },
  { "rebelot/kanagawa.nvim" },
  { "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
        -- contrast = "hard",
        -- transparent_mode = true,
      })
      vim.cmd.colorscheme("dracula")
    end,
  },
  -- { "olimorris/onedarkpro.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "catppuccin/nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "light",
      highlights = {
        -- https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
        -- https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/highlights.lua
        ["@punctuation.bracket"] = { fg = "$purple", fmt = "bold" },
        -- https://github.com/rcarriga/nvim-notify/blob/master/lua/notify/config/highlights.lua
        NotifyINFOTitle = { fg = "$dark_cyan" },
        NotifyINFOIcon = { fg = "$dark_cyan" },
      },
    },
  },
}
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme("...")
--   end
