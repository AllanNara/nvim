vim.api.nvim_create_user_command("Theme", function(opts)
  vim.cmd("colorscheme " .. opts.args)
end, {
  nargs = 1,
  complete = function()
    return {
      "kanagawa",
      "gruvbox",
      "nightfox",
      "dracula-soft",
      "dracula",
      "onedark",
      "onedark_dark",
      "onedark_vivid",
      "onelight",
      "carbonfox",
      "dawnfox",
      "dayfox",
      "duskfox",
      "terafox",
      "nightfox",
      "nordfox",
      "tokyonight",
      "tokyonight-day",
      "tokyonight-moon",
      "tokyonight-night",
      "tokyonight-storm",
    }
  end,
})
