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
