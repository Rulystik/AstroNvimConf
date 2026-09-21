--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- 1. Стек Nest / TypeScript / JavaScript
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },

  -- 2. Стек Nuxt / Vue.js (включает Volar для автодополнения во vue-файлах)
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" }, -- на случай, если в Nuxt используете Tailwind

  -- 3. GraphQL (подсветка схем, автодополнение запросов)

  -- 4. PostgreSQL / SQL / Базы данных
  { import = "astrocommunity.pack.prisma" }, -- Nest/Nuxt часто используют Prisma/Drizzle

  -- 5. Полезные инструменты для веб-разработчика
  { import = "astrocommunity.pack.docker" }, -- для контейнеров с Postgres
  { import = "astrocommunity.pack.yaml" }, -- для docker-compose.yml

  -- Моушн-плагин для мгновенного перемещения (Flash)
  { import = "astrocommunity.motion.flash-nvim" },
}
