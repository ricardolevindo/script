#!/bin/bash
# Script de instalação de ferramentas de desenvolvimento
# Inclui sistema de histórico de uso

# Registrar uso deste script
source "$(dirname "$0")/historico-lib.sh" 2>/dev/null && registrar_uso_script 2>/dev/null

## robot3t
sudo apt update
sudo apt install snapd
sudo snap install robo3t-snap

## verificar partições
lsblk -f
## verificar uso de disco com ncdu
sudo apt install ncdu
sudo ncdu /home

## grafana observabilidade
wget -qO- https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt update
sudo apt install grafana -y
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

sudo systemctl stop grafana-server
sudo systemctl restart grafana-server

http://localhost:3001
ou
http://grafana.local:3001
ou
http://grafana.local

editar /etc/hosts
# incluir no fim do arquivo
<ip da maquina> grafana.local

primeiro login
Email or username: admin
Password: admin

senha alterada para 
Email or username: admin
Password: admin1


## notas no arquivo
#https://linuxmasterclub.com/notejot/

## capturar teclas especiais ubuntu
#https://www.omgubuntu.co.uk/screenkey-show-key-presses-screen-ubuntu

## cronometro para projetos
#https://sempreupdate.com.br/como-instalar-o-temporizador-countdown-no-linux/

# SPOTIFY Linha de comando
ncspot


# configurar o SSH no Linux
sudo apt install openssh-server openssh-client
# Iniciar o serviço SSH
service sshd start

# Visualizar informações da máquina
hostnamectl

# Acesso remoto
    sudo apt upgrade
    sudo apt install xrdp xorgxrdp
    sudo apt install xserver-xorg-input-all
    sudo adduser xrdp ssl-cert
    sudo ufw allow 3389/tcp
    echo env -u SESSION_MANAGER -u DBUS_SESSION_BUS_ADDRESS cinnamon-session~/.xsession
    
# Anydesk
# rustdesk
# vinagre
# remmina
# X2Go - everywhere@home

#sudo rm /etc/apt/preferences.d/nosnap.pref


#################################################
#################################################
###########           Redes           ###########
#################################################
#################################################
 ### Instalar wireshark
 sudo add-apt-repository ppa:wireshark-dev/stable
 sudo apt-get update
 sudo apt-get install wireshark
 ### Desinstalar wireshark
 sudo add-apt-repository ppa:wireshark-dev/stable -r -y
 sudo apt-get remove wireshark --auto-remove

 sudo apt-get install nload
 sudo apt-get install tcpdump

#################################################
#################################################
###########           Editores        ###########
#################################################
#################################################
# Editor gedit
sudo apt install gedit
# Editor nano
sudo apt install nano
# Instalar pacote ferramentas inclusive editor mcedit
sudo apt install mc

### Sublime
#Install the GPG key:
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#Update apt sources and install Sublime Text
sudo apt-get update
sudo apt-get install sublime-text




# thema dracula terminal
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh


#################################################
#################################################
###########          Shell            ###########
#################################################
#################################################
## Visualizar o Shell Padrão
 echo $SHELL

## Atualize o cache do apt
sudo apt update

## Instale o ZSH
sudo apt install zsh -y
zsh --version
## Onde está o binário do ZSH
whereis zsh
## Definir queo ZSH será o shell padrão
sudo usermod -s /usr/bin/zsh $(whoami)
### outra forma de tornar o ZSH o shell padrão é editar o arquivo passwd com o comando abaixo
###sudo gedit /etc/passwd

### Feche o terminal e abra novamente e observe a mensagem que surge
### Tecle 2 para que o ZSH crie o arquivo .zshrc dentro do diretório home do usuário. É nesse arquivo que ficam as configurações do ZSH

### Configurando a integração do ZSH com o Git
## Instalar o git
sudo apt install git
### Framework adequado que provê facilidades/funcionalidades no shell para o uso do git com o shell ZSH - Oh-My-ZSH 
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
### Outra alternativa para instalar o Oh-My-ZSH
##Sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### O framework Oh-My-ZSH possui muitos plugins que extendem sua fucionalidades. 
### Ao instalar o framework, conforme descrito anteriormente, dentro do diretório 
### home foi criado um diretório .oh-my-zsh com o todo o seu código.
### Dentro do diretório .oh-my-zsh, há um diretório plugins que contém os plugins 
### disponíveis para o framework. O comando abaixo exibe os plugins disponíveis:
ls ~/.oh-my-zsh/plugins

## Instale o tema powerlevel9k
sudo apt install zsh-theme-powerlevel9k
## Adicione a configuração no arquivo .zshrc definindo que ele será o tema utilizado pelo ZSH
### Será adicionado no final do arquivo .zshrc, o que está dentro do diretório home do usuário, o conteúdo entre aspas.
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
## Habilitando destaque de comandos (Syntax Highlighting)
sudo apt install zsh-syntax-highlighting
## Adicionar a configuração de Syntax Highlighting no final do arquivo .zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

## A partir de agora todas configurações que você quer fazer como adicionar variáveis ambientes ou 
## configurar seu terminal de qualquer forma utilize o arquivo ~/.zshrc e não mais o ~/.bash_profile ou derivados

### Outro tema
## Thema Dracula para zsh
git clone https://github.com/dracula/zsh.git
#Mover o arquivo dracula.zsh-theme da pasta theme de zsh para ~/.oh-my-zsh/themes/
#Mover a pasta lib/ de zsh para ~/.oh-my-zsh/themes/
#Ativar o thema
#alterar a configuração do arquivo ./.zshrc 
#################################################
#################################################
###########         Fim Shell         ###########
#################################################
#################################################



#Ensure apt is set up to work with https sources:
sudo apt-get install apt-transport-https

#Select the channel to use:
##Stable
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
##Dev
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

#### Trafego de rede
sudo apt install wireshark

sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install snapd

#Só lista pacotes instalados
flatpak list
snap list
#Para remover, no Snap tudo do pacote será removido exceto o ‘core’
flatpak remove nome-do-pacote
snap remove nome-do-pacote
#para remover tudo 
flatpak remove --all
#Remover somento o que não é mais necessário
flatpak remove --unused

sudo apt install --install-recommends flatpak
#ou
#sudo apt install flatpak
#ou 
#sudo apt install flatpak
#se tiver usando gnome  instale o plugin
#apt install gnome-software-plugin-flatpak
# atualizar repositório de gerenciamento
flatpak remote-add gnome https://sdk.gnome.org/gnome.flatpakrepo

#Video downloader 
flatpak install --user https://flathub.org/repo/appstream/com.github.unrud.VideoDownloader.flatpakref
#Para Atualizar
flatpak --user update com.github.unrud.VideoDownloader
#Para iniciar o VideoDownloader pelo terminal
flatpak run com.github.unrud.VideoDownloader 
#Para desisnstalar
flatpak uninstall com.github.unrud.VideoDownloader

#Como instalar o app de geolocalização de fotos Geotagging no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.jmlich.geotagging.flatpakref
flatpak --user update com.github.jmlich.geotagging
flatpak run com.github.jmlich.geotagging
flatpak uninstall com.github.jmlich.geotagging

#Como instalar o reprodutor de mídia Clapper no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.rafostar.Clapper.flatpakref
flatpak --user update com.github.rafostar.Clapper
flatpak --user uninstall com.github.rafostar.Clapper
flatpak run com.github.rafostar.Clapper

#Como instalar o app de processamento de fotos Darktable no Linux via Flatpak
flatpak install --from https://flathub.org/repo/appstream/org.darktable.Darktable.flatpakref
flatpak --user update org.darktable.Darktable
flatpak uninstall org.darktable.Darktable
flatpak run org.darktable.Darktable

#Como instalar o app de notas autoadesivas Notejot no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.lainsce.notejot.flatpakref
flatpak --user update com.github.lainsce.notejot
flatpak --user uninstall com.github.lainsce.notejot
flatpak run com.github.lainsce.notejot

#Como instalar o cliente Git Sublime Merge no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.sublimemerge.App.flatpakref
flatpak --user update com.sublimemerge.App
flatpak --user uninstall com.sublimemerge.App
flatpak run com.sublimemerge.App

#Como instalar a IDE para bancos de dados DataGrip no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.jetbrains.DataGrip.flatpakref
flatpak --user update com.jetbrains.DataGrip
flatpak run com.jetbrains.DataGrip
flatpak --user uninstall com.jetbrains.DataGrip

#Como instalar o Open Broadcaster no Linux via Flatpak
flatpak install --from https://flathub.org/repo/appstream/com.obsproject.Studio.flatpakref
flatpak --user update com.obsproject.Studio
flatpak --user uninstall com.obsproject.Studio
flatpak run com.obsproject.Studio

#Como instalar o editor de sprites LibreSprite no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.libresprite.LibreSprite.flatpakref
flatpak --user update com.github.libresprite.LibreSprite
flatpak run com.github.libresprite.LibreSprite
flatpak --user uninstall com.github.libresprite.LibreSprite

#Como instalar o gerenciador de senhas NordPass no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.nordpass.NordPass.flatpakref
flatpak --user update com.nordpass.NordPass
flatpak run com.nordpass.NordPass
flatpak --user uninstall com.nordpass.NordPass

#Como instalar o capturador de telas FlameShot no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/org.flameshot.Flameshot.flatpakref
flatpak --user update org.flameshot.Flameshot
flatpak run org.flameshot.Flameshot
flatpak --user uninstall org.flameshot.Flameshot

#instalar captura de tela 
sudo apt install flameshot

#Como instalar o gerenciador de conexões EasySSH no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.muriloventuroso.easyssh.flatpakref
flatpak --user update com.github.muriloventuroso.easyssh
flatpak uninstall com.github.muriloventuroso.easyssh
flatpak run com.github.muriloventuroso.easyssh

#Como instalar o comparador de arquivos Meld no Linux via Flatpak
flatpak install --from https://flathub.org/repo/appstream/org.gnome.meld.flatpakref
flatpak --user update org.gnome.meld
flatpak --user uninstall org.gnome.meld
flatpak run org.gnome.meld

#Como instalar o monitor de sistema StatusPilatus no Linux
#Confira se o seu sistema é de 32 bits ou 64 bits, para isso, use o seguinte comando no terminal
uname -m
#Versão 64 bits (appimage)
wget https://github.com/PilatusDevs/StatusPilatus/releases/download/0.5.0/StatusPilatus.0.5.0.AppImage -O statuspilatus.appimage
chmod a+x statuspilatus.appimage
sudo ./statuspilatus.appimage --install

#Derivados Debian
wget https://github.com/PilatusDevs/StatusPilatus/releases/download/0.5.0/StatusPilatus_0.5.0_amd64.deb -O statuspilatus.deb
sudo dpkg -i statuspilatus.deb
# ou
sudo apt install ./statuspilatus.deb
sudo apt-get install -f
sudo apt-get remove statuspilatus*

#Como instalar o app de estações de rádio Tuner no Linux via Flatpak
flatpak install --user https://flathub.org/repo/appstream/com.github.louis77.tuner.flatpakref
flatpak --user update com.github.louis77.tuner
flatpak run com.github.louis77.tuner
flatpak --user uninstall com.github.louis77.tuner

#instalar wine
sudo apt-get install wine



sudo snap install rambox

sudo snap install thunderbird
sudo snap install geforcenow
sudo snap install translatium

# Remote Desktop Client
# Remmina is a remote desktop client written in GTK+, aiming to be useful for system administrators and travellers, 
# who need to work with lots of remote computers in front of either large monitors or tiny netbooks.
sudo snap install remmina
sudo snap connect remmina:audio-record :audio-record
sudo snap connect remmina:avahi-observe :avahi-observe
sudo snap connect remmina:cups-control :cups-control
sudo snap connect remmina:mount-observe :mount-observe
sudo snap connect remmina:password-manager-service :password-manager-service



#Driver, mapper and GUI for Steam Controller, DS4 and similar controllers
sudo snap install sc-controller

sudo snap install sublime-text --classic

sudo snap install postman

sudo snap install android-studio --classic

#sudo snap install warzone2100
#sudo snap install marsshooter

sudo snap install skype --classic
sudo snap install slack --classic

sudo snap install slack-term

sudo snap install libreoffice

#Hex Editor
sudo snap install ghex-udt

#kanban
sudo snap install wekan

#Interactive processes viewer
sudo snap install htop

#Fabulously kill processes
sudo snap install fkill

sudo snap install sftpclient

#Disk Space Analyzer that saves hundreds of gigabytes!
sudo snap install disk-space-saver

#Create custom QR Codes
sudo snap install qr-code-generator-desktop


#Instalação OpenVpn
#First ensure that your apt supports the https transport:
  apt install apt-transport-https
#Install the OpenVPN repository key used by the OpenVPN 3 Linux packages  
  wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
  apt-key add openvpn-repo-pkg-key.pub  
#Then you need to install the proper repository. Replace $DISTRO with the release name depending on your Debian/Ubuntu distribution.
  wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-$DISTRO.list
  apt update
#And finally the openvpn3 package can be installed  
  apt install openvpn3
  
#Firebird - SYSDBA - masterkey
  sudo apt-get install libstdc++5
  sudo apt-get -y install libncurses5 libtommath1
  wget https://github.com/FirebirdSQL/firebird/releases/download/R2_5_9/FirebirdSS-2.5.9.27139-0.amd64.tar.gz
  tar xf FirebirdSS-2.5.9.27139-0.amd64.tar.gz
  cd FirebirdSS-2.5.9.27139-0.amd64
  sudo ./install.sh
  
  # A seguir são apresentados os diretórios e arquivos mais importantes que são criados durante o processo de instalação aqui apresentado:
  ## Diretório da instalação: /opt/firebird
  ## Ferramenta ISQL: /opt/firebird/bin/isql
  ## Arquivo de configuração: /opt/firebird/firebird.conf
  ## Arquivo de log: /opt/firebird/firebird.log
  ## Script para alterar a senha do SYSDBA: /opt/firebird/bin/changeDBAPassword.sh
  ## Script para desinstalação do Firebird: /opt/firebird/bin/FirebirdUninstall.sh  
  
#Client Mongo
sudo snap install robo3t-snap

sudo snap install obs-studio
sudo apt install simplescreenrecorder

#Monitor de acesso a internet via terminal
wget https://ufpr.dl.sourceforge.net/project/linuxfreedomfor/Linux/nbwmon%20bin/64bit/nbwmon
sudo mv nbwmon /usr/bin/nbwmon
sudo chmod +x /usr/bin/nbwmon
# Exemplo de uso
##nbwmon -n # nenhuma cor
##nbwmon -u # graphmax unificado
##nbwmon -i # interface de rede
##nbwmon -d # segundos para atualizar
##nbwmon -l # altura do gráfico
# monitorar a conexão wireless (wlan0) atualizando cada segundo.
#nbwmon-i wlan0 d 1

sudo snap install intellij-idea-community --classic

#smartgit
sudo add-apt-repository ppa:eugenesan/ppa
sudo apt-get update
sudo apt-get install smartgit
sudo apt-get install smartgithg

#Slack
sudo snap install slack --classic


sudo snap install rambox
sudo snap install pencilsheep
sudo snap install inkscape
sudo snap install vectr
sudo snap install colorpicker-app
sudo snap install gimp

# para usar o Take Snapshot or record your desktop do Cinamon
sudo apt-get install ffmpeg 
sudo apt-get install xdotool  

# captura de tela
sudo add-apt-repository ppa:sylvain-pineau/kazam
sudo apt-get update
sudo apt-get install kazam
sudo apt-get install python3-xlib python3-cairo
#kazam --version
#kazam -v
sudo snap install aws-cli --classic

#Instalar Docker Machine
curl -L https://github.com/docker/machine/releases/download/v0.16.0/docker-machine-Linux-x86_64 >/tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine 
chmod +x /usr/local/bin/docker-machine

#########################
### FortiClient VPN
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/repo.fortinet.com.gpg] https://repo.fortinet.com/apt/ubuntu/ /ubuntu/" | sudo tee /etc/apt/sources.list.d/repo.fortinet.com.list
# Importar a chave GPG do repositório
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 31265A3D4F2B4B20
sudo apt update
sudo apt install forticlient
