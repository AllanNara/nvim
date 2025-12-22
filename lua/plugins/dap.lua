local js_based_languages = {
  "typescript",
  "javascript",
  "typescriptreact",
  "javascriptreact",
  "vue",
}

return {
  { "nvim-neotest/nvim-nio" },
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<leader>dO", false }, -- desactiva el "Step Over" default
      {
        "<leader>dd",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
        nowait = true,
      },
      {
        "<leader>da",
        function()
          require("dap").continue()
        end,
        desc = "Run/Continue",
      },
      { "<leader>dc", false }, -- Run with arguments
    },

    config = function()
      local dap = require("dap")
      local Config = require("lazyvim.config")

      vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

      for name, sign in pairs(Config.icons.dap) do
        sign = type(sign) == "table" and sign or { sign }
        vim.fn.sign_define(
          "Dap" .. name,
          { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
        )
      end

      for _, language in ipairs(js_based_languages) do
        dap.configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Pricing 2",
            program = "/home/allannara/Repositorios/robot-pricing-2/src/launch.js",
            cwd = "/home/allannara/Repositorios/robot-pricing-2/src",
            skipFiles = { "/home/allannara/Repositorios/robot-pricing-2/src/node_modules/**", "<node_internals>/**" }, -- Ignora archivos internos de Node.js para que no salten al debug.
            console = "integratedTerminal",
            internalConsoleOptions = "neverOpen",
            sourceMaps = false,
            runtimeArgs = { "--env-file", "/home/allannara/envs/pricing.env" },
            args = { "--env-file /home/allannara/envs/pricing.env" },
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "Position V2",
            program = "/home/allannara/Repositorios/robot-position/src/index.js",
            cwd = "/home/allannara/Repositorios/robot-position/src",
            skipFiles = { "/home/allannara/Repositorios/robot-position/src/node_modules**", "<node_internals>/**" }, -- Ignora archivos internos de Node.js para que no salten al debug.
            console = "integratedTerminal",
            internalConsoleOptions = "neverOpen",
            sourceMaps = false,
            runtimeArgs = { "--env-file", "/home/allannara/envs/position.env" },
            args = { "--env-file /home/allannara/envs/position.env" },
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "Debug current file",
            program = "${file}",
            cwd = "${workspaceFolder}",
            console = "integratedTerminal",
            skipFiles = {
              "<node_internals>/**",
              "**/node_modules/**",
              "**/internal/**",
              "**/diagnostics_channel/**",
              "**/loader/**",
              "**/v8/**",
              "!${workspaceFolder}/**",
            },
            smartStep = true,
            resolveSourceMapLocations = {
              "${workspaceFolder}/**",
              "!**/node_modules/**",
            },
            autoExpandLazyLoadedScripts = false,
          },
        }
      end
    end,

    dependencies = {
      { "mxsdev/nvim-dap-vscode-js" },
      { "nvim-lua/plenary.nvim" },
      {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
          local dap, dapui = require("dap"), require("dapui")
          dapui.setup()

          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
          end
        end,
      },
      { "theHamsta/nvim-dap-virtual-text", opts = {} },
      { "jay-babu/mason-nvim-dap.nvim", dependencies = { "mason-org/mason.nvim" } },
    },
  },
}
