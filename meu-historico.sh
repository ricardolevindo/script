#!/bin/bash

# Script principal para mostrar histórico de uso
# Este script responde ao comando "me mostre meu histórico de uso"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HISTORICO_SCRIPT="$SCRIPT_DIR/historico-uso.sh"

# Verificar se o script de histórico existe
if [ ! -f "$HISTORICO_SCRIPT" ]; then
    echo "❌ Erro: Sistema de histórico não encontrado."
    echo "Verifique se o arquivo historico-uso.sh está presente no diretório."
    exit 1
fi

# Executar o script de histórico
"$HISTORICO_SCRIPT" "$@"