require("nvim-web-devicons").set_icon({
  html = { icon = "", color = "#e34c26", cterm_color = "166", name = "Html" },
  js = { icon = "", color = "#f1e05a", cterm_color = "185", name = "Js" },
  handlebars = { icon = "", color = "#f1c40f", cterm_color = "226", name = "Handlebars" },
})

require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets" } })
-- Forzar a Neovim a tratar los archivos .handlebars como html
--local orig_notify = vim.notify
