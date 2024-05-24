return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate"
  configs = function()
  -- setup tree sitter
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "javascript", "java", "rust", "dart" },
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end
}
