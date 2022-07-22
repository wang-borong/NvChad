local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "comment",
      "dockerfile",
      "json",
      "bash",
      "python",
      "c",
      "rust",
      "toml",
      "go",
      "verilog",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
