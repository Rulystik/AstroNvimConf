return {
  "uga-rosa/ccc.nvim",
  event = { "User AstroFile", "InsertEnter" },
  cmd = { "CccPick", "CccConvert", "CccHighlighterToggle" },
  config = function()
    local ccc = require "ccc"
    ccc.setup {
      -- Автоматически подсвечивать цвета в тексте при открытии файла
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    }
  end,
  -- Назначаем горячую клавишу для вызова выбора цвета
  keys = {
    { "<leader>`", "<cmd>CccPick<cr>", desc = "Выбрать цвет (Color Picker)" },
  },
}
