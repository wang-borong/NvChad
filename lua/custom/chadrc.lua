local M = {}

M.options = {
   -- load your options here or load module with options
   user = function()
      local opt = vim.opt
      local g = vim.g

      g.mapleader = ";"

      opt.smartcase = true
      opt.ignorecase = true
      opt.shiftwidth = 4
      opt.smartindent = true
      opt.tabstop = 4
      opt.autoindent = true
      opt.cursorline = true
      opt.wrap = true
      opt.mouse = ""
   end,

   nvChad = {
      update_url = "https://github.com/wang-borong/NvChad",
      update_branch = "main",
   },
}

M.ui = {
   -- hl = highlights
   hl_add = {},
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "onedark", "one_light" },
   theme = "onedark", -- default theme
   transparency = false,

   statusline = {
      separator_style = "default", -- default/round/block/arrow
      config = "%!v:lua.require('ui.statusline').run()",
      override = {},
   },

   -- lazyload it when there are 1+ buffers
   tabufline = {
      enabled = true,
      lazyload = true,
      override = {},
   },
}

M.plugins = {
   override = {
      ["treesitter"] = require("custom.plugins.configs").treesitter,
   },
   remove = {},
   user = {
      ["Pocco81/TrueZen.nvim"] = {
         cmd = {
            "TZAtaraxis",
            "TZMinimalist",
            "TZFocus",
         },
         config = function()
            require "custom.plugins.truezen"
         end,
      },
      --["jose-elias-alvarez/null-ls.nvim"] = {
      --   after = "nvim-lspconfig",
      --   config = function()
      --      require("custom.plugins.null-ls").setup()
      --   end,
      --},
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file
      },
      statusline = {
         separator_style = "default", -- default/round/slant/block/arrow
      },
      telescope = {
         extensions = { "themes", "terms" }
      }
   },
}

M.mappings = require "custom.mappings"

return M
