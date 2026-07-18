#!/usr/bin/env bash
set -e

INSTALL_DIR="${1:-/usr/local/bin}"
SCRIPT="sysmenu"

if [ ! -f "$SCRIPT" ]; then
  echo "Erro: $SCRIPT não encontrado na pasta atual."
  exit 1
fi

echo "A instalar $SCRIPT em $INSTALL_DIR..."
sudo install -m 755 "$SCRIPT" "$INSTALL_DIR/$SCRIPT"
echo "Instalado! Execute com: $SCRIPT"
