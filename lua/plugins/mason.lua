-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- LSP
        "css-lsp",
        "docker-language-server",
        "emmet-ls",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "prisma-language-server",
        "rust-analyzer",
        "slint-lsp",
        "tailwindcss-language-server",
        "vtsls",
        "vue-language-server",
        "yaml-language-server",
        -- Formatters and linters
        "selene",
        "stylua",
        "hadolint",
        -- Debuggers
        "js-debug-adapter",
        -- install debuggers
        "debugpy",
        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
