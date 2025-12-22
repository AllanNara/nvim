-- Remapea <leader>cd para cambiar el directorio al del buffer actual
vim.keymap.set("n", "<leader>cd", function()
  vim.cmd("cd %:p:h")
  vim.cmd("pwd")
end, { desc = "Change CWD to current buffer" })

local builtin = require("telescope.builtin")

-- Ejemplo: buscar archivos en ~/proyectos/mi_carpeta
vim.keymap.set("n", "<leader>Pe", function()
  builtin.find_files({
    cwd = "~/envs", -- ruta fija
    hidden = true,                  -- opcional, para mostrar archivos ocultos
  })
end, { desc = "envs files for DAP" })

local wk = require("which-key")

wk.add({
  { "<leader>P",  group = "Projects" }, -- encabezado del menú
  { "<leader>Pe", function()
    builtin.find_files({
      cwd = "~/envs", -- ruta fija
      hidden = true,                  -- opcional, para mostrar archivos ocultos
    })
    end,
    desc = "envs files for DAP"
  },
  { "<leader>Pj", function()
      builtin.find_files({
        cwd = "~/Repositorios/robot-pricing-cronjobs",
        hidden = true,
      })
    end,
    desc = "Robot Pricing-2 (Cronjobs)"
  },
  { "<leader>Pk", function()
      builtin.find_files({
        cwd = "~/Repositorios/robot-position-2-cronjobs",
        hidden = true,
      })
    end,
    desc = "Robot Position-2 (Cronjobs)"
  },
  { "<leader>Pu", function()
      builtin.find_files({
        cwd = "~/Repositorios/robot-pricing-2",
        hidden = true,
      })
    end,
    desc = "Robot Pricing-2"
  },
  { "<leader>Pi", function()
      builtin.find_files({
        cwd = "~/Repositorios/robot-position",
        hidden = true,
      })
    end,
    desc = "Robot Position-2"
  },
  { "<leader>Pa", function()
      builtin.find_files({
        cwd = "~/Programs/getilaunch-tool",
        hidden = true,
      })
    end,
    desc = "Geti Launcher"
  },
})

local map = vim.keymap.set

map("n", "<C-[>", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<C-]>", "<cmd>split<CR>", { desc = "Split horizontal" })
map("n", "<C-m>", "<cmd>close<CR>", { desc = "Close window" })
