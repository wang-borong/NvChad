local M = {}

-- overriding default plugin configs!
M.treesitter = {
  override_options = {
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
    indent = {
      disable = {  },
    },
  }
}

M.mason = {
  override_options = {
    ensure_installed = {
      "lua-language-server",
      "bash-language-server",
      "stylua",
      "shfmt",
      "shellcheck",
      "jq",
      "clang-format",
      "clangd",
      "gopls",
      "marksman",
      "prettier",
      "pyright",
      "pylint",
      "flake8",
      "rust-analyzer",
      "verible",
    },
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
}

return M
