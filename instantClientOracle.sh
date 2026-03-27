#!/bin/bash

# Registrar uso deste script
source "$(dirname "$0")/historico-lib.sh" 2>/dev/null && registrar_uso_script 2>/dev/null

printf "Instalação do instant client oracle" 

#Atualizar pacotes
sudo apt update

# Instalar alien para instalar rpm em ambiente Debian
sudo apt install -y alien

# Download dos arquivos para instalar a versão 19.3 do client do oracle 
wget https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-basiclite-19.3.0.0.0-1.x86_64.rpm
wget https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-devel-19.3.0.0.0-1.x86_64.rpm
wget https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-sqlplus-19.3.0.0.0-1.x86_64.rpm 

# Instalar os três pacotes baixados
sudo alien -i oracle-instantclient19.3-*.rpm

# Instala a dependencia do para o SQL*Plus, mesmo se não tiver essa ferramenta pode instalar ele é pequeno, não vai feder nem cheirar  
sudo apt install -y libaio1

# Criar as variáveis de ambiente e gravar no arquivo oracle-env.sh
printf "\n\n# Oracle Client environment\n \
export LD_LIBRARY_PATH=/usr/lib/oracle/19.3/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export ORACLE_HOME=/usr/lib/oracle/19.3/client64\n" | sudo tee /etc/profile.d/oracle-env.sh > /dev/null

#Subir as variaveis de ambiente
. /etc/profile.d/oracle-env.sh


printf "Instante client oracle instalado. Seja feliz, espalhe o bem!"
