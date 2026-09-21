#!/usr/bin/env bash

# Стоп при любой ошибке внутри скрипта
set -e

echo "=== Запуск автоматической настройки окружения Neovim ==="

# 1. Проверяем, что скрипт НЕ запущен напрямую от root (чтобы не испортить права на файлы)
if [ "$EUID" -eq 0 ]; then
  echo "Ошибка: Не запускайте этот скрипт напрямую через 'sudo ./install.sh'!"
  echo "Запустите его как обычный пользователь: ./install.sh"
  echo "Скрипт сам запросит пароль sudo, когда это потребуется."
  exit 1
fi

sudo dnf update -y
sudo dnf install -y git neovim make gcc-c++ ripgrep fd-find unzip \
                    wl-clipboard nodejs cargo cascadia-fonts-all \
                    microsoft-cascadia-code-fonts-all google-noto-emoji-fonts

echo "-> Системные пакеты успешно установлены."

echo "-> Установка Tree-sitter CLI через npm..."
sudo npm install -g tree-sitter-cli

echo "-> Компоненты Node.js настроены."

# 4. Вывод финальной инструкции по настройке терминала
echo ""
echo "========================================================"
echo "🎉 Системная подготовка для AstroNvim ЗАВЕРШЕНА!"
echo "========================================================"
echo "Для правильного отображения иконок и прозрачности Осаки,"
echo "настройте ваш текущий терминал по инструкции ниже:"
echo ""
echo "1. Если вы используете терминал FOOT:"
echo "   - Файл: ~/.config/foot/foot.ini"
echo "   - В секцию [main] добавьте:   font=Cascadia Code NF:size=11"
echo "   - В секцию [colors] добавьте: alpha=0.85"
echo ""
echo "2. Если вы используете терминал ALACRITTY:"
echo "   - Файл: ~/.config/alacritty/alacritty.toml"
echo "   - Добавьте блок шрифта:      [font.normal]"
echo "                                family = 'Cascadia Code NF'"
echo "   - Добавьте блок прозрачности: [window]"
echo "                                opacity = 0.85"
echo ""
echo "3. Если вы используете терминал KITTY:"
echo "   - Файл: ~/.config/kitty/kitty.conf"
echo "   - Добавьте строки:"
echo "     font_family      Cascadia Code NF"
echo "     background_opacity 0.85"
echo "========================================================"
echo "Настройка завершена. Теперь можно запускать команду: nvim"

