#!/bin/bash

# KybervotarOS vBETA, Author @kyber.bat (Gael González), @s4vitar (Marcelo Vázquez) y @vokin (Víctor Laza), repositorio orginal: 

# Variables para los colores
verde="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
rojo="\e[0;31m\033[1m"
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
morado="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
gris="\e[0;37m\033[1m"

echo -e "\n${verde}[INICIANDO...]${endColour}\n"

echo -e "\n${amarillo}[Instalando dependencias]${endColour}\n"
# Instalación de dependecias
sudo apt-get install xfce4-terminal mousepad caja feh compton rofi scrub ranger libssl-dev libffi-dev python-dev build-essential tmux -y
cd /opt/
sudo git clone https://github.com/byt3bl33d3r/CrackMapExec.git
cd /opt/CrackMapExec/
sudo python3 setup.py install
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
echo -e "\n${morado}[Dependecias instaladas]${endColour}\n"

echo -e "\n${amarillo}[Instalando Chorme Browser]${endColour}\n"
# Instalación de Chrome Browser (opcional tu puedes usar chromium,brave o firefox)
cd ~
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/google-chrome-stable_current_amd64.deb
rm ~/google-chrome-stable_current_amd64.deb
sudo apt-get update
echo -e "\n${morado}[Chrome Browser instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando Hack Nerd Fonts]${endColour}\n"
# Instalación de Hack Nerd Fonts
cd /usr/local/share/fonts/
sudo wget https://github.com/initr5/Kyb3rvotarOS/blob/master/src/themes/Hack.zip?raw=true
sudo unzip Hack.zip
sudo rm Hack.zip
echo -e "\n${morado}[Hack Nerd Fonts instaldo]${endColour}\n"

echo -e "\n${amarillo}[Instalando dependencias]${endColour}\n"
# Instalando la polybar
sudo apt-get install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev -y
sudo apt-get install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
echo -e "\n${morado}[Dependencias instaladas.]${endColour}\n"

# Intalando el zsh 
sudo apt-get install zsh -y
rm .zshrc
cd ~
wget https://raw.githubusercontent.com/kyb3rvizsla-others/Kyb3rvotarOS/master/config/zsh/zshrc



echo -e "\n${amarillo}[Descargando y confurando los functions]${endColour}\n"
# Configurando los functions del zsh
cd ~/.kyb3rvotaros/
wget https://github.com/Peltoche/lsd/releases/download/0.14.0/lsd_0.14.0_amd64.deb
cd ~/.kyb3rvotaros/
sudo dpkg -i lsd_0.14.0_amd64.deb
cd ~/.kyb3rvotaros/
rm lsd_0.14.0_amd64.deb
cd ~/.kyb3rvotaros/
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
cd ~/.kyb3rvotaros/
rm bat_0.15.4_amd64.deb
cd ~/.kyb3rvotaros/
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
sudo apt-get update
echo -e "\n${morado}[Functions configurados]${endColour}\n"


echo -e "\n${amarillo}[Configurando el fzf]${endColour}\n"
# Intalando fzf
cd ~
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install 
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf
sudo /root/.fzf/install 
echo -e "\n${morado}[fzf configurado y instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando plugins de zsh]${endColour}\n"
# Instalndo plugins de zsh
sudo apt-get update
sudo apt-get install zsh-autosuggestions -y
sudo apt-get install zsh-syntax-highlighting -y
cd /usr/share/
sudo mkdir sudo
cd /usr/share/sudo/
sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
sudo chown root:root -R /usr/local/share/zsh/site-functions/
sudo mv /root/powerlevel10k/ /root/.powerlevel10k/
echo -e "\n${morado}[Plugins instalados]${endColour}\n"

echo -e "\n${amarillo}[Instalando i3lock-fancy y imagegick]${endColour}\n"
# Instalación de i3lock-fancy y imagemagick
sudo apt-get update
sudo apt-get install i3lock-fancy imagemagick -y
echo -e "\n${morado}[i3lock-fancy i image instaldos]${endColour}\n"

echo -e "\n${rojo}[Corrigiendo errores en la instalación...]${endColour}\n"
cd ~
wget https://raw.githubusercontent.com/initr5/Kyb3rvotarOS/master/complete.sh
chmod +x complete.sh
./complete.sh
echo -e "\n${morado}[Errores corregidos]${endColour}\n"

echo -e "\n${amarillo}[Es obligatorio y muy importante leer el README.md el apartado "IMPORTANTE", ya que esto aún esta en desarrollo y allí te solucionan unos errores ]${endColour}\n"
