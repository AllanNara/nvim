return {
  { "folke/snacks.nvim", opts = { dashboard = { enabled = false } } },
  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = function()
      local opts = {
        theme = "hyper",
        config = {
          week_header = { enable = true, append = { "Remember to have a good day!" } },
          shortcut = {
            { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
            { action = function() require("telescope.builtin").oldfiles({ cwd_only = false }) end,                 desc = " Recent Files",    icon = " ", key = "r" },
            { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
            { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
            { action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
            { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
          },          -- 👇 agrega secciones extras
          packages = { enable = false }, -- show how many plugins neovim loaded
          footer = function()
            return {}
          end,
        },
      }

      return opts
    end,
  },
}
