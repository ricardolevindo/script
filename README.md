# scriptDebian

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

## Instalar o Snap
    sudo apt install -y snapd
    sudo systemctl start snapd
    sudo systemctl enable snapd

## Instalar o Zsh e Oh My Zsh
    sudo apt install -y zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Instalar o Node.js e NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    . ~/.nvm/nvm.sh
    nvm install node

## Instalar o NPM e Yarn
    sudo apt install -y npm
    npm install -g yarn

## Instalar o Docker e Docker Compose
    sudo apt install -y docker.io
    sudo usermod -aG docker $USER
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

## Instalar o Java
    sudo apt install -y default-jdk

## Instalar o Python
    sudo apt install -y python3 python3-pip

## Instalar o PostgreSQL
    sudo apt install -y postgresql

## Instalar o Oracle Instant Client
    wget -qO- https://raw.githubusercontent.com/oracle/instantclient-deb/master/instantclient-basic-linux.x64-19.8.0.0.0db.deb.sh | sudo bash
    sudo apt install -y oracle-instantclient19.8-basic

## Instalar o Flutter
    sudo snap install flutter --classic

## Instalar o Visual Studio Code
    sudo apt install -y software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt update && sudo apt install -y code

## Instalar o IntelliJ IDEA
    sudo snap install intellij-idea-community --classic
    sudo snap install intellij-idea-ultimate --classic
    sudo snap install intellij-idea-educational --classic

## Instalar o DBeaver
    sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
    sudo apt update
    sudo apt install -y dbeaver-ce

## Instalar o FortiClient
    wget -O - https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu xenial multiverse
    sudo apt-get update
    sudo apt install -y forticlient

## Instalar o Insomnia
    curl -1sLf 'https://packages.konghq.com/public/insomnia/setup.deb.sh' | sudo -E bash -
    sudo apt-get update
    sudo apt-get install -y insomnia

## Instalar o Postman
    sudo snap install postman

## Instalar o Anydesk
    sudo apt install -y anydesk

## Instalar o Remmina
    sudo apt install -y remmina

## Instalar o RustDesk
    sudo snap install rustdesk

## Instalar o QDirStat
    sudo apt install -y qdirstat

## Instalar o Antimicro
    sudo apt install -y antimicro

## Instalar o JSTest-GTK
    sudo apt install -y jstest-gtk

## Instalar o Grafana
    sudo apt install -y grafana

## Instalar o ncspot
    sudo apt install -y ncspot

## Instalar o Flameshot
    sudo apt install -y flameshot
