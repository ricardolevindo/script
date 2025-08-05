# Funções auxiliares para histórico de uso
# Para incluir em outros scripts: source $(dirname "$0")/historico-lib.sh

# Função para registrar uso de script
registrar_uso_script() {
    local script_path="$0"
    local script_name=$(basename "$script_path")
    local historico_script="$(dirname "$script_path")/historico-uso.sh"
    
    # Verificar se o script de histórico existe
    if [ -f "$historico_script" ]; then
        "$historico_script" --registrar "$script_name" 2>/dev/null
    fi
}

# Função para mostrar histórico (atalho)
mostrar_meu_historico() {
    local historico_script="$(dirname "$0")/historico-uso.sh"
    
    if [ -f "$historico_script" ]; then
        "$historico_script"
    else
        echo "Sistema de histórico não encontrado."
    fi
}

# Auto-registrar uso quando este arquivo for incluído
# (comentado por padrão para evitar registro duplo)
# registrar_uso_script