-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

--------------------------
local util = require "lspconfig/util"
--------------------------

-- EXAMPLE
local servers = { "html", "cssls", "pylsp", "elixirls", "clangd", "asm_lsp", "jdtls"}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

require'lspconfig'.jdtls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.elixirls.setup{
    -- Unix
    -- cmd = { "/nix/store/rr7qzs96l01wrp0s2kshln5jlfp1ibzq-user-environment/bin/elixirls" };
  cmd = {"/home/markjakearzadon/.local/share/nvim/mason/bin/elixir-ls"}
}

require'lspconfig'.pyright.setup{}

require'lspconfig'.rust_analyzer.setup{
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true
      },
    }
  }

}
-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   settings = {
--         ["rust-analyzer"] = {
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 buildScripts = {
--                     enable = true,
--                 },
--             },
--             procMacro = {
--                 enable = true
--             },
--         }
--     }
-- })

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
