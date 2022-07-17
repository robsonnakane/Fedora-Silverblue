#!/bin/bash

###Fedora Silverblue###
###Atualização completa do sistema###

##Execução do arquivo de atualização no terminal##
#/var/home/robsonnakane/Documentos/'Atualização Silverblue.sh'#

#Edição do arquivo no terminal#
#nano /var/home/robsonnakane/Documentos/'Atualização Silverblue.sh'#

##Cancela a atualização automática dos repositórios##
rpm-ostree cancel;
##Atualizção dos repositórios##
rpm-ostree refresh-md;
##Limpeza cache##
rpm-ostree cleanup -m;
rpm-ostree cleanup -r;
rpm-ostree cleanup -p;
rpm-ostree cleanup -b;
rpm-ostree override reset --all;
##Conferência dos pacotes##
rpm-ostree upgrade --check;
rpm-ostree upgrade --preview;
##Atualização do sistema##
rpm-ostree upgrade;


##Instalação de programas##
#rpm-ostree install neofetch; rpm-ostree install idle3; rpm-ostree install simple-scan; rpm-ostree install lshw-gui; rpm-ostree install elementary-code; rpm-ostree install gnome-tweaks; rpm-ostree install java-latest-openjdk;


##Instalação dos programas Flatpak##
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;flatpak install flathub com.spotify.Client -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub us.zoom.Zoom -y;flatpak install flathub org.kde.kdenlive -y;flatpak install flathub org.onlyoffice.desktopeditors -y;flatpak install flathub com.skype.Client -y;flatpak install flathub com.adobe.Flash-Player-Projector -y;flatpak install flathub org.gnome.Extensions -y;flatpak install flathub org.gnome.Boxes -y;flatpak install flathub com.transmissionbt.Transmission -y;flatpak install flathub org.mypaint.MyPaint -y;flatpak install flathub org.mozilla.Thunderbird -y;flatpak install flathub org.chromium.Chromium -y;flatpak install flathub org.raspberrypi.rpi-imager -y;flatpak install flathub org.fedoraproject.MediaWriter -y;flatpak install flathub org.gnome.gedit -y;

##Atualização do Flatpak##
flatpak update -y;

##Atualização de versão##
##Pesquisar a versão disponível##
#ostree remote refs fedora;
###(Exemplo!)
#rpm-ostree rebase fedora:fedora/37/x86_64/silverblue;

##Reboot para rpm-ostree rebase##
#sudo rpm-ostree rebase -r

##Reinicialização do sistema
systemctl reboot
