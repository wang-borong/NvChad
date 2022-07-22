local present, lspconfig = pcall(require, "lspconfig")

if not present then
   return
end

local M = {}

local servers = { 'clangd', 'rust_analyzer', 'pyright', 'bashls','verible' }

function M.setup_lsp(on_attach, capabilities)
   for _, lsp in pairs(servers) do
      lspconfig[lsp].setup {
         on_attach = on_attach,
         capabilities = capabilities,
         flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
         }
      }
   end
end

return M
