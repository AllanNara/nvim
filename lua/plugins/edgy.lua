-- plugins/edgy.lua
return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    animate = {
      enabled = false,
    },
    options = {
      left = { size = 45 },   -- ancho en columnas
      right = { size = 43 },  -- ancho en columnas
    },
    bottom = {
      {
        title = "  Console",
        ft = "dapui_console",
        size = { height = 0.33 },
      },
    },
    left = {
      {
        title = "  Scopes",
        ft = "dapui_scopes",
        size = { height = 0.33 },
      },
      {
        title = "  Breakpoints",
        ft = "dapui_breakpoints",
        size = { height = 0.33 },
      },
      {
        title = "󰈈  Watches",
        ft = "dapui_watches",
        size = { height = 0.33 },
      },
    },
    right = {
      {
        title = "  Stacks",
        ft = "dapui_stacks",
        size = { height = 0.50 },
      },
      {
        title = "REPL",
        ft = "dap-repl",
        size = { height = 0.50 },
      },
    }
  },
}
