local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

  -- txt stuff
  b.formatting.prettierd.with { filetypes = { "markdown", "json", "yaml" } },

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- C
  b.formatting.clang_format,
  b.diagnostics.gccdiag,

  -- Python
  b.formatting.autopep8,
  b.diagnostics.flake8,

  -- Rust
  b.formatting.rustfmt,
}

local M = {}

M.setup = function()
  null_ls.setup {
    debug = true,
    sources = sources,
    on_init = function (new_client, _)
      new_client.offset_encoding = 'utf-32'
    end
  }
end

return M
