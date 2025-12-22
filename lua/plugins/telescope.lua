return {

  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      -- Ignorar patrones de archivo
      file_ignore_patterns = {
        "node_modules",
        "package%-lock%.json",
        "pnpm%-lock%.yaml",
        "yarn%.lock",
      },

      -- Configuración para rg (ripgrep)
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",

        -- Exclusiones explícitas
        "--glob=!node_modules/**",
        "--glob=!**/package-lock.json",
        "--glob=!**/pnpm-lock.yaml",
        "--glob=!**/yarn.lock",
      },
    },
    pickers = {
      oldfiles = {
        cwd_only = false,
      },
    },
  },
  keys = {
    -- atajo para archivos recientes globales
    {
      "<leader>fr",
      function()
        require("telescope.builtin").oldfiles({ cwd_only = false })
      end,
      desc = "Recent files (global)",
    },

    -- atajo para buscar en ~/envs
    {
      "<leader>E",
      function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.expand("~/envs"), -- expandir ~ a $HOME
          hidden = true,
        })
      end,
      desc = "envs files for DAP",
    },
  },

  -- con esto removemos el mapeo previo de <leader>E (si existía)
  init = function()
    vim.keymap.del("n", "<leader>E")
  end,
}
