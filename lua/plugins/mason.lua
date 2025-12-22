return {
  {
    "mason-org/mason.nvim",
    version = ">=2.0.0",
    build = ":MasonUpdate",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = ">=2.0.0",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
}
