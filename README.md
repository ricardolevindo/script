# scriptDebian

## 📊 Histórico de Uso

**Novo!** Este repositório agora inclui um sistema de histórico de uso dos scripts.

```bash
# Para ver seu histórico de uso:
./meu-historico.sh
```

Veja [HISTORICO-USO.md](HISTORICO-USO.md) para documentação completa.

## Instalar pacotes impressora
    sudo apt install printer-driver-escpr
    sudo adduser seu-usuario lpadmin
    http://localhost:631/printers/ 
    
 
## Atualizar sistema e instalar pacotes básicos
    sudo apt update && sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    git \
    wget \
    xz-utils \
    tree \
    build-essential

## The Software Development Kit Manager
    # sdkman
    # sdkman.io
    curl -s "https://get.sdkman.io" | bash

## Snap
    # Se existir o arquivo /etc/apt/preferences.d/nosnap.pref ele deverá ser movido para pasta de documentos
    sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
    sudo apt update
    sudo apt install snapd

    sudo systemctl start snapd
    sudo systemctl enable snapd
    
    snap version
    
    # Testar instalação do Snap
    $ snap install hello-world
    hello-world 6.4 from Canonical✓ installed
    $ hello-world
    Hello World!

## Zsh e Oh My Zsh
    sudo apt install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        https://github.com/zdharma/fast-syntax-highlighting
        https://github.com/zsh-users/zsh-autosuggestions
        https://github.com/zsh-users/zsh-completions
    https://github.com/romkatv/powerlevel10k

## Node.js e NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    . ~/.nvm/nvm.sh
    nvm install node

## NPM e Yarn
    sudo apt install -y npm
    npm install -g yarn

## Docker e Docker Compose
    sudo apt install -y docker.io
    sudo usermod -aG docker $USER
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

## Java
    # Multiplas versões (Recomendo olhar isso)
    ## https://github.com/shyiko/jabba

    # Opção do openjdk
    # Para instalar o ambiente de desenvolvimento do OpenJDK:
    sudo apt install openjdk-17-jdk
    # Para pesquisar outras versões disponíveis do OpenJDK, execute:
    sudo apt search openjdk*

    # Opção do jdk proprietário
    sudo apt install -y default-jdk default-jre  
     
    java --version

## Python
    sudo apt install -y python3 python3-pip

## PostgreSQL
    sudo apt install -y postgresql

## Oracle Instant Client
    wget -qO- https://raw.githubusercontent.com/oracle/instantclient-deb/master/instantclient-basic-linux.x64-19.8.0.0.0db.deb.sh | sudo bash
    sudo apt install -y oracle-instantclient19.8-basic

## Flutter
    sudo snap install flutter --classic

## Visual Studio Code
    # intalação via snap
    sudo snap install code --classic

    # instalação via apt
    sudo apt update && sudo apt upgrade
    cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && cd $HOME
    echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
    sudo apt update
    sudo apt install code

## Android Studio
    # Remover versões antigas
    ## sudo apt-get remove android-studio --auto-remove
    ## sudo apt-get autoremove

    # Instalar versão mais atualizada
    sudo add-apt-repository ppa:maarten-fonville/android-studio
    sudo apt-get update
    sudo apt-get install android-studio
   
    ######################
    
    # Para instalar uma versão "Preview"
    sudo apt-get install android-studio-preview

## IntelliJ IDEA
     # APT
     # faça download da versão communit
     # https://www.jetbrains.com/idea/download/#section=linux
     wget https://download-cdn.jetbrains.com/idea/ideaIC-2022.2.3.tar.gz
     # extraia o arquivo
     tar -xvzf idea*.tar.gz && mv idea*/ intellij-idea
     sudo mv intellij-idea /opt
     
     cd /opt/intellij-idea/bin
     ./idea.sh

     sudo ln -s /opt/intellij-idea/bin/idea.sh /usr/bin/idea

    # Outras opções 
    sudo snap install intellij-idea-ultimate --classic
    sudo snap install intellij-idea-educational --classic

    ############################################################### 

    # SNAP (Melhor opção)  
    sudo snap install intellij-idea-community --classic
    sudo snap install intellij-idea-ultimate --classic
    sudo snap install intellij-idea-educational --classic

    # Para atualizar o IntelliJ IDEA Community Edition:
    sudo snap refresh intellij-idea-community
    # Para atualizar o IntelliJ IDEA Ultimate Edition:
    sudo snap refresh intellij-idea-ultimate
    # Para atualizar o IntelliJ IDEA Education:
    sudo snap refresh intellij-idea-educational

## DBeaver
    sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
    sudo apt update
    sudo apt install -y dbeaver-ce

## MongoDB
    # MongoDB shell
    wget -qO mongosh.zip "https://fastdl.mongodb.org/mongosh/latest/mongosh-ubuntu2004-x86_64-latest.zip"

    # Extract the downloaded file
    unzip mongosh.zip

    # Move the mongosh binary to a system directory
    sudo mv mongosh /usr/local/bin/

    # Set the permissions for the mongosh binary
    sudo chmod +x /usr/local/bin/mongosh

    # Verify the installation
    
    mongosh --version

    ###############################################

    # Robo 3T
    wget -qO robo3t-1.4.4-linux-x86_64.tar.gz "https://robomongo.org/files/robo-3t-1.4.4-linux-x86_64.tar.gz"

    # Extract the downloaded package
    tar -xzf robo3t-1.4.4-linux-x86_64.tar.gz

    # Move the extracted directory to /opt
    sudo mv robo3t-1.4.4-linux-x86_64 /opt/

    # Create a symbolic link to the Robo 3T executable
    sudo ln -s /opt/robo3t-1.4.4-linux-x86_64/bin/robo3t /usr/local/bin/

    # Verify the installation
    robo3t --version

## FortiClient

    # FortiClient FortiClient 6.4 - (Copiar configurações utilizadas da máquina antiga)
    wget -O - https://repo.fortinet.com/repo/6.4/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    deb [arch=amd64] https://repo.fortinet.com/repo/6.4/ubuntu/ /bionic multiverse
    sudo apt-get update
    sudo apt install forticlient    

    # FortiClient FortiClient 7.0 - (Copiar configurações utilizadas da máquina antiga)
    wget -O - https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu xenial multiverse
    sudo apt-get update
    sudo apt install -y forticlient

## Insomnia
    sudo snap install insomnia
    sudo systemctl restart snapd.service

## Postman
    sudo snap install postman
    sudo systemctl restart snapd.service

## Anydesk
    sudo apt install -y anydesk

## Remmina
    sudo apt install -y remmina

## RustDesk
    sudo snap install rustdesk

## QDirStat
    sudo apt install -y qdirstat

## Antimicro
    sudo apt install -y antimicro

## JSTest-GTK
    # https://community.linuxmint.com/software/view/jstest-gtk
    # https://jstest-gtk.gitlab.io/
    sudo apt install -y jstest-gtk

## Grafana
    sudo apt install -y grafana

## ncspot
    snap install ncspot

## Flameshot
    sudo apt install -y flameshot

## Produtividade
    https://obsidian.md/
    https://ticktick.com/features
