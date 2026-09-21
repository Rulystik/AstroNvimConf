-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter
-- --------------------
-- Treesitter customizations are handled with AstroCore
-- as nvim-treesitter simply provides a download utility for parsers

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      highlight = true, -- enable/disable treesitter based highlighting
      indent = true, -- enable/disable treesitter based indentation
      auto_install = true, -- enable/disable automatic installation of detected languages
      ensure_installed = {
        "lua",
        "vim",
        "asm",
        "bash",
        "c",
        "css",
        "dockerfile",
        "fish",
        "html",
        "ini",
        "javascript",
        "jsdoc",
        "json",
        "lua",
        "luap",
        "markdown",
        "markdown_inline",
        "nasm",
        "prisma",
        "python",
        "query",
        "regex",
        "rust",
        "scss",
        "slint",
        "styled",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "yaml",
        -- add more arguments for adding more treesitter parsers
      },
    },
  },
}
