#!/bin/bash

# Script para gerenciar histórico de uso dos scripts
# Autor: Script de desenvolvimento

HISTORICO_DIR="$HOME/.config/script-historico"
HISTORICO_FILE="$HISTORICO_DIR/uso.log"

# Criar diretório se não existir
mkdir -p "$HISTORICO_DIR"

# Função para registrar uso
registrar_uso() {
    local script_name="$1"
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    local user=$(whoami)
    local pwd=$(pwd)
    
    echo "[$timestamp] $user executou '$script_name' em $pwd" >> "$HISTORICO_FILE"
}

# Função para mostrar histórico
mostrar_historico() {
    if [ ! -f "$HISTORICO_FILE" ]; then
        echo "Nenhum histórico de uso encontrado."
        echo "Execute alguns scripts primeiro para gerar o histórico."
        return 1
    fi
    
    echo "=== HISTÓRICO DE USO DOS SCRIPTS ==="
    echo
    
    # Mostrar estatísticas gerais
    local total_execucoes=$(wc -l < "$HISTORICO_FILE")
    local primeiro_uso=$(head -n 1 "$HISTORICO_FILE" | cut -d']' -f1 | tr -d '[')
    local ultimo_uso=$(tail -n 1 "$HISTORICO_FILE" | cut -d']' -f1 | tr -d '[')
    
    echo "📊 Estatísticas:"
    echo "   Total de execuções: $total_execucoes"
    echo "   Primeiro uso: $primeiro_uso"
    echo "   Último uso: $ultimo_uso"
    echo
    
    # Mostrar scripts mais usados
    echo "🔥 Scripts mais utilizados:"
    grep -o "executou '[^']*'" "$HISTORICO_FILE" | sort | uniq -c | sort -rn | head -5 | while read count script; do
        script_clean=$(echo "$script" | cut -d"'" -f2)
        echo "   $count× $script_clean"
    done
    echo
    
    # Mostrar histórico recente (últimas 10 execuções)
    echo "📅 Últimas execuções:"
    tail -n 10 "$HISTORICO_FILE" | while IFS= read -r linha; do
        timestamp=$(echo "$linha" | cut -d']' -f1 | tr -d '[')
        resto=$(echo "$linha" | cut -d']' -f2-)
        echo "   $timestamp →$resto"
    done
    echo
    
    # Opções adicionais
    echo "💡 Opções disponíveis:"
    echo "   $0 --completo     Mostrar histórico completo"
    echo "   $0 --limpar       Limpar histórico"
    echo "   $0 --script NOME  Filtrar por script específico"
}

# Função para mostrar histórico completo
mostrar_historico_completo() {
    if [ ! -f "$HISTORICO_FILE" ]; then
        echo "Nenhum histórico de uso encontrado."
        return 1
    fi
    
    echo "=== HISTÓRICO COMPLETO DE USO ==="
    echo
    cat "$HISTORICO_FILE" | while IFS= read -r linha; do
        timestamp=$(echo "$linha" | cut -d']' -f1 | tr -d '[')
        resto=$(echo "$linha" | cut -d']' -f2-)
        echo "$timestamp →$resto"
    done
}

# Função para filtrar por script
filtrar_por_script() {
    local script_filtro="$1"
    
    if [ ! -f "$HISTORICO_FILE" ]; then
        echo "Nenhum histórico de uso encontrado."
        return 1
    fi
    
    echo "=== HISTÓRICO PARA: $script_filtro ==="
    echo
    
    grep "executou '$script_filtro'" "$HISTORICO_FILE" | while IFS= read -r linha; do
        timestamp=$(echo "$linha" | cut -d']' -f1 | tr -d '[')
        resto=$(echo "$linha" | cut -d']' -f2-)
        echo "$timestamp →$resto"
    done
}

# Função para limpar histórico
limpar_historico() {
    if [ -f "$HISTORICO_FILE" ]; then
        read -p "Tem certeza que deseja limpar todo o histórico? (s/N): " confirmacao
        if [[ "$confirmacao" =~ ^[sS]$ ]]; then
            > "$HISTORICO_FILE"
            echo "Histórico limpo com sucesso!"
        else
            echo "Operação cancelada."
        fi
    else
        echo "Nenhum histórico encontrado para limpar."
    fi
}

# Verificar argumentos
case "$1" in
    "--registrar")
        if [ -z "$2" ]; then
            echo "Erro: Nome do script é obrigatório"
            echo "Uso: $0 --registrar NOME_DO_SCRIPT"
            exit 1
        fi
        registrar_uso "$2"
        ;;
    "--completo")
        mostrar_historico_completo
        ;;
    "--limpar")
        limpar_historico
        ;;
    "--script")
        if [ -z "$2" ]; then
            echo "Erro: Nome do script é obrigatório"
            echo "Uso: $0 --script NOME_DO_SCRIPT"
            exit 1
        fi
        filtrar_por_script "$2"
        ;;
    "--ajuda"|"-h"|"--help")
        echo "=== SISTEMA DE HISTÓRICO DE USO ==="
        echo
        echo "Uso: $0 [OPÇÃO]"
        echo
        echo "Opções:"
        echo "  (sem opção)      Mostrar resumo do histórico"
        echo "  --completo       Mostrar histórico completo"
        echo "  --script NOME    Filtrar por script específico"
        echo "  --limpar         Limpar todo o histórico"
        echo "  --registrar NOME Registrar uso de um script (uso interno)"
        echo "  --ajuda          Mostrar esta ajuda"
        echo
        echo "Exemplos:"
        echo "  $0                           # Mostrar resumo"
        echo "  $0 --script install.sh       # Ver histórico do install.sh"
        echo "  $0 --completo               # Ver histórico completo"
        ;;
    "")
        mostrar_historico
        ;;
    *)
        echo "Opção inválida: $1"
        echo "Use '$0 --ajuda' para ver as opções disponíveis."
        exit 1
        ;;
esac