#sudo rm /etc/apt/preferences.d/nosnap.pref

###Incluir menu no cinnamon
## cinnamon-menu-editor 
###

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

#wget http://app.prntscr.com/build/setup-lightshot.exe
#wine ./setup-lightshot.exe

sudo snap install rambox

sudo snap install thunderbird
sudo snap install geforcenow
sudo snap install translatium

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

#Gerenciador de senhas
sudo snap install 1password --edge

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

