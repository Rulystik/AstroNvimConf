return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy", -- Безопасная ленивая загрузка для AstroNvim
  opts = {
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,

    -- Снижаем минимальную дистанцию, чтобы каретка летела даже при мелких шагах:
    min_horizontal_distance_smear = 1,
    min_vertical_distance_smear = 1,

    -- (Опционально) Если в вашем терминале шлейф черного цвета и его не видно:
    -- cursor_color = "#FF00FF", -- Можно привязать к вашему ядовито-розовому!
  },
}
