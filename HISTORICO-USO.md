# Sistema de Histórico de Uso

Este repositório agora inclui um sistema de histórico de uso que permite rastrear quando e quais scripts foram executados.

## Como usar

### Visualizar histórico de uso

Para ver seu histórico de uso, execute:

```bash
./meu-historico.sh
```

Este comando mostra:
- 📊 Estatísticas gerais (total de execuções, primeiro e último uso)
- 🔥 Scripts mais utilizados
- 📅 Últimas execuções
- 💡 Opções adicionais disponíveis

### Opções disponíveis

```bash
# Mostrar resumo do histórico
./meu-historico.sh

# Mostrar histórico completo
./meu-historico.sh --completo

# Filtrar por script específico
./meu-historico.sh --script install.sh

# Limpar todo o histórico
./meu-historico.sh --limpar

# Mostrar ajuda
./meu-historico.sh --ajuda
```

## Como funciona

### Rastreamento automático

Os scripts principais já foram modificados para registrar automaticamente seu uso:
- `install.sh`
- `instantClientOracle.sh`
- `example-color.sh`
- `exemploCorTerminal.sh`

### Adicionando rastreamento a novos scripts

Para adicionar rastreamento a um novo script, adicione estas linhas no início:

```bash
#!/bin/bash

# Registrar uso deste script
source "$(dirname "$0")/historico-lib.sh" 2>/dev/null && registrar_uso_script 2>/dev/null

# ... resto do seu script
```

### Localização dos dados

O histórico é armazenado em:
- **Diretório**: `~/.config/script-historico/`
- **Arquivo**: `~/.config/script-historico/uso.log`

## Arquivos do sistema

- `historico-uso.sh` - Script principal do sistema de histórico
- `historico-lib.sh` - Biblioteca com funções auxiliares
- `meu-historico.sh` - Script de conveniência para mostrar o histórico

## Exemplos de uso

```bash
# Ver seu histórico de uso
./meu-historico.sh

# Ver quantas vezes você usou o install.sh
./meu-historico.sh --script install.sh

# Ver histórico completo com timestamps
./meu-historico.sh --completo

# Limpar histórico (com confirmação)
./meu-historico.sh --limpar
```

## Comando em português

O sistema responde ao comando "me mostre meu histórico de uso" através do script `./meu-historico.sh`.