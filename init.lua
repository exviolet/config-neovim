vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Basic
require('core.plugins')
require('core.colors') 
require('core.configs') 
require('core.comments')
require('core.keymaps')

-- Plugins
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.buffline')
require('plugins.lualine')
require('plugins.dashboard')
require('plugins.todo-comments')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.gitsigns')
require('plugins.colorscheme')

-- Themes
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-lotus")
-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
-- vim.o.termguicolors = true

