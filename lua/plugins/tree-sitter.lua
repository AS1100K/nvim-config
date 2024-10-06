return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {"c", "rust", "javascript", "typescript", "python", "html", "css"},
      highlight = { enabled = true },
      indent = { enable = true }
    })
  end
}
