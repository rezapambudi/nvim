vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins  = {
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			
		}
	}
}


local opts = {}

require("lazy").setup(plugins, opts)

-- configuration for telescope
vim.keymap.set('n', '<C-e>', ' :Neotree filesystem reveal left<CR>', {})

-- configure tree sitter
local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "java", "rust", "dart"},
	highlight = { enabled = true },
	indent = { enable = true},
})


