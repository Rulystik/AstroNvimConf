return {
  "echasnovski/mini.animate",
  enabled = false,
  version = false,
  lazy = false,
  config = function()
    require("mini.animate").setup {
      -- Включает анимацию курсора, скролла, изменения окон и открытия меню
      cursor = { enable = true },
      scroll = { enable = true },
    }
  end,
}
