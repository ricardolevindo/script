# scriptDebian

## Instaladores
  ### SNAP
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

## Navegadores:
  ### Chrome
  ### Opera
  ### Brave
  ### Vivald (Copiar favoritos e senha)
  
## Terminal
  ### oh my zsh
    sudo apt install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        https://github.com/zdharma/fast-syntax-highlighting
        https://github.com/zsh-users/zsh-autosuggestions
        https://github.com/zsh-users/zsh-completions
    https://github.com/romkatv/powerlevel10k
  
## Editores
  ### Sublime3 (Listar arquivos de configuração)
  ### Meld - DIFF

## Desenvolvimento:
  ### Node Js
    pacotes nodejs global (kill-port)

  ### NVM
  ### Instant Client Oracle
  ### Java
  ### Python
  ### Insomnia
   ## APT
   ### Add to sources
   curl -1sLf \
   'https://packages.konghq.com/public/insomnia/setup.deb.sh' \
   | sudo -E distro=ubuntu codename=focal bash

   sudo apt-get update
   sudo apt-get install insomnia

   ## SNAP (Melhor opção)
   sudo snap install insomnia
   sudo systemctl restart snapd.service
  
  ### Postman
    sudo snap install postman
    sudo systemctl restart snapd.service
    
  ### Flutter

## IDE:
  ### VSCode
   ### APT
    # importar chave des assinatura GPC
    cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && cd $HOME
    # repositório oficial
    echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
    # atualizar repositório
    sudo apt update  
    ## Para instalar o Visual Studio Code, execute:
    sudo apt install code

   ### SNAP (Melhor opção)
     sudo snap install code --classic
     
  ### Android studio
  ### Intelij idea
   ## instalar o JRE e JDK 
     ## Opção do openjdk
     ## Para instalar o ambiente de desenvolvimento do OpenJDK:
     sudo apt install openjdk-17-jdk
     ## Para pesquisar outras versões disponíveis do OpenJDK, execute:
     sudo apt search openjdk*

     ## Opção do jdk proprietário
     sudo apt install -y default-jdk default-jre  
     
     java --version
     
     ## faça download da versão communit
     https://www.jetbrains.com/idea/download/#section=linux
     wget https://download-cdn.jetbrains.com/idea/ideaIC-2022.2.3.tar.gz
     ## extraia o arquivo
     tar -xvzf idea*.tar.gz && mv idea*/ intellij-idea
     sudo mv intellij-idea /opt
     
     cd /opt/intellij-idea/bin
     ./idea.sh

     sudo ln -s /opt/intellij-idea/bin/idea.sh /usr/bin/idea

   ## SNAP (Melhor opção)  
     sudo snap install intellij-idea-community --classic
     sudo snap install intellij-idea-ultimate --classic
     sudo snap install intellij-idea-educational --classic

   ### Para atualizar o IntelliJ IDEA Community Edition:
     sudo snap refresh intellij-idea-community
   ### Para atualizar o IntelliJ IDEA Ultimate Edition:
     sudo snap refresh intellij-idea-ultimate
   ### Para atualizar o IntelliJ IDEA Education:
     sudo snap refresh intellij-idea-educational
  
## Client B.D.
  DBeaver
  Robot3t

## Segurança:
  ### FortiClient
  #### FortiClient FortiClient 7.0 - (Copiar configurações utilizadas da máquina antiga)
    wget -O - https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu xenial multiverse
    sudo apt-get update
    sudo apt install forticlient

  #### FortiClient FortiClient 6.4 - (Copiar configurações utilizadas da máquina antiga)
    wget -O - https://repo.fortinet.com/repo/6.4/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    deb [arch=amd64] https://repo.fortinet.com/repo/6.4/ubuntu/ /bionic multiverse
    sudo apt-get update
    sudo apt install forticlient    

## Comunicação:
  ### RamBox
  ### Electronim

## Diversos:
  ### ncspot
  ### flameshot

## Observabilidade:
  ### grafana

## Ferramentas:  
  ### Verificar espaço em disco QDirStat
    sudo apt install qdirstat  

  ### Joystick 
   #### Anti micro
     sudo apt install antimicro -y

   #### JSTEST-GTK
     https://community.linuxmint.com/software/view/jstest-gtk
     https://jstest-gtk.gitlab.io/
