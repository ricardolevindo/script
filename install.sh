#sudo rm /etc/apt/preferences.d/nosnap.pref


sudo apt update
sudo apt install snapd


#instalar captura de tela 
sudo apt install flameshot

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
