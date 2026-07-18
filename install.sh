#!/usr/bin/env bash
set -e
SCRIPT="sysmenu"
TARGET="/usr/local/bin/$SCRIPT"
[ ! -f "$SCRIPT" ] && { echo "Erro: '$SCRIPT' não encontrado."; exit 1; }
echo "🛠  Sys Menu — Instalador"
sudo install -m 755 "$SCRIPT" "$TARGET"
echo "✅ Instalado! Executa: sysmenu"
