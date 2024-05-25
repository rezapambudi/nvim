return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  configs = function()
  -- setup tree sitter
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end
}
