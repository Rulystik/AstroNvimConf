return {
  -- 1. Подключаем саму тему японца строго по его репозиторию
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    -- opts оставляем пустым, чтобы работали ЕГО дефолтные оригинальные цвета
    opts = {
      style = "storm",
      transparent = false,
    },
  },

  -- 2. Передаем управление цветом в AstroUI
  {
    "AstroNvim/astroui",
    opts = {
      colorscheme = "solarized-osaka",
      highlights = {
        -- Оставляем только твое кастомное выделение текста (Visual)
        ["solarized-osaka"] = {
          Visual = { bg = "#ffffaa", fg = "#000000" },
        },
      },
    },
  },
}
