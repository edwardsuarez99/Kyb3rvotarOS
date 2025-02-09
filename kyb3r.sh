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

echo -e "\n${amarillo}[Instalando Brave Browser]${endColour}\n"
# Instalación de Brave Browser 
cd ~
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install brave-browser -y
sudo rm /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
echo -e "\n${morado}[Brave Browser instalado]${endColour}\n"


echo -e "\n${amarillo}[Instalando Hack Nerd Fonts]${endColour}\n"
# Instalación de Hack Nerd Fonts y Powerline Fonts
cd /usr/local/share/fonts/
sudo wget https://github.com/initr5/Kyb3rvotarOS/master/src/themes/Hack.zip
sudo unzip Hack.zip
sudo rm Hack.zip
echo -e "\n${morado}[Hack Nerd Fonts instaldo]${endColour}\n" 


# Intalando el zsh 
sudo apt-get install zsh -y

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

echo -e "\n${amarillo}[Es obligatorio y muy importante leer el README.md el apartado "IMPORTANTE", ya que esto aún esta en desarrollo y allí te solucionan unos errores ]${endColour}\n"