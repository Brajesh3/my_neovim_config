-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "kotlin_language_server", "jdtls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- configuration for clangd
lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  -- Additional options specific to clangd
  cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = function()
    return vim.loop.cwd() -- Set the root directory to the current working directory
  end,
}

-- Java (jdtls) specific configuration
lspconfig.jdtls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  cmd = { "jdtls" },
  root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle"),
}

-- Kotlin specific configuration
lspconfig.kotlin_language_server.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  -- cmd = { "kotlin-language-server" },
  -- filetypes = { "kt" },
  -- root_dir = lspconfig.util.root_pattern(".git", "settings.gradle", "build.gradle", "pom.xml"),
}
