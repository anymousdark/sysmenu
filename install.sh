#!/usr/bin/env bash
set -e

SCRIPT="sysmenu"
TARGET="/usr/local/bin/$SCRIPT"

if [ ! -f "$SCRIPT" ]; then
  echo "Erro: '$SCRIPT' não encontrado na pasta atual."
  echo "Executa a partir da pasta do repositório clonado."
  exit 1
fi

echo "🛠  Sys Menu — Instalador"
echo ""
echo "A instalar $SCRIPT em $TARGET..."
sudo install -m 755 "$SCRIPT" "$TARGET"

echo ""
echo "✅ Instalado com sucesso!"
echo ""
echo "   Agora podes executar de qualquer lado:"
echo ""
echo "       sysmenu"
echo ""
echo "   Ou mantém a cópia local com:"
echo ""
echo "       ./sysmenu"
echo ""
