return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local original_on_attach = opts.on_attach

      opts.on_attach = function(client, bufnr)
        -- Firma
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
          border = "rounded",
          max_width = 60,
          max_height = 5,
          winblend = 15,
        })
        client.server_capabilities.signatureHelpProvider = nil

        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {
          desc = "Signature Help",
          buffer = bufnr,
        })

        if original_on_attach then
          original_on_attach(client, bufnr)
        end
      end

      opts.servers = opts.servers or {}

      opts.servers.bashls = {
        -- Filtro de diagnósticos para eliminar los de nivel INFO
        handlers = {
          ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
            if result.diagnostics then
              -- Filtrar los que no sean INFO
              local filtered = {}
              for _, diagnostic in ipairs(result.diagnostics) do
                if diagnostic.severity ~= vim.diagnostic.severity.INFO then
                  table.insert(filtered, diagnostic)
                end
              end
              result.diagnostics = filtered
            end

            -- Llama al handler original con la lista filtrada
            vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
          end,
        },
      }
    end,
  },
}
