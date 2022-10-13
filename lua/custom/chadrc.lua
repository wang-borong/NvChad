local M = {}

M.options = {
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
}

M.plugins = {
  ["nvim-treesitter/nvim-treesitter"] = require("custom.plugins").treesitter,

  ["williamboman/mason.nvim"] = require("custom.plugins").mason,

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

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
}

M.mappings = require "custom.mappings"

return M
