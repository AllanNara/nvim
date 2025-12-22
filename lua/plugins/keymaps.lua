-- ~/.config/nvim/lua/plugins/keymaps.lua
return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local wk = require("which-key")
      wk.add({
        { "<leader>j", group = "buffer" },
        -- { "<leader>jH", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left" },
        -- { "<leader>jL", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right" },
        { "<leader>jd", ":bp | bd#<CR>", desc = "Delete Buffer" },
        { "<leader>jD", "<cmd>bd<cr>", desc = "Delete Buffer and Window" },
        -- { "<leader>jh", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
        { "<leader>jj", "<cmd>e #<cr>", desc = "Switch to Other Buffer" },
        -- { "<leader>jl", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
        { "<leader>jo", ":%bd|e#<cr>", desc = "Close Other Buffers" },
        -- { "<leader>jr", "<cmd>BufferLineCloseRight<cr>", desc = "Close Buffers to the Right" },
        { "<leader>js", "<cmd>w<cr>", desc = "Save Buffer" },
        { "<leader>jt", "<cmd>tabnew<cr>", desc = "New Tab" },
        { "<leader>fj", "<leader>fb", desc = "Search Buffer" },
      }, {
        mode = { "n" }, -- NORMAL and VISUAL mode
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    keys = {
      { "<leader>jj", "<cmd>e #<cr>", desc = "Switch to Other Buffer" },
      { "<leader>jd", ":bp | bd#<CR>", desc = "Delete Buffer" },
      { "<leader>jD", "<cmd>bd<cr>", desc = "Delete Buffer and Window" },
      { "<leader>jo", ":%bd|e#<cr>", desc = "Close Other Buffers" },
      -- { "<leader>jl", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      -- { "<leader>jh", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      -- { "<leader>jr", "<cmd>BufferLineCloseRight<cr>", desc = "Close Buffers to the Right" },
      -- { "<leader>jL", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right" },
      -- { "<leader>jH", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left" },
      { "<leader>js", "<cmd>w<cr>", desc = "Save Buffer" },
      { "<leader>jt", "<cmd>tabnew<cr>", desc = "New Tab" },
      { "<leader>jj", "<cmd>b#<cr>", desc = "Alternate Buffer" },
      { "<leader>fj", "<leader>fb", desc = "Search Buffer" },
    },
  },
}
