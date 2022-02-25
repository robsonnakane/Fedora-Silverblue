#!/bin/bash

###Fedora Silverblue###
##Atualização completa do sistema##
##!!!!!Desligar a atualização automática e as notificações!!!!##
rpm-ostree upgrade;rpm-ostree cancel;rpm-ostree upgrade;

##Instalação do toolbox e programas##
#rpm-ostree install toolbox

##Dentro do Toolbox##
#toolbox create
#toolbox enter
#sudo dnf install idle3 -y; sudo dnf install lshw-gui -y; sudo dnf install elementary-code -y;sudo dnf install gnome-tweaks -y;sudo dnf install java-latest-openjdk -y;

###Abertura dos programas pelo terminal###
#elementary-code: $ io.elementary.code

##Instalação dos programas Flatpack##
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;flatpak install flathub com.spotify.Client -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub us.zoom.Zoom -y;flatpak install flathub org.kde.kdenlive -y;flatpak install flathub org.onlyoffice.desktopeditors -y;flatpak install flathub com.skype.Client -y;flatpak install flathub com.adobe.Flash-Player-Projector -y;flatpak install flathub com.slack.Slack -y;flatpak install flathub org.gnome.Extensions -y;flatpak install flathub org.gnome.Boxes -y;flatpak install flathub org.qbittorrent.qBittorrent -y;flatpak install flathub org.mypaint.MyPaint -y;flatpak install flathub org.mozilla.Thunderbird -y;flatpak install flathub com.jetbrains.PyCharm-Community -y;flatpak install flathub org.chromium.Chromium -y;flatpak install flathub io.github.shiftey.Desktop -y;flatpak install flathub org.raspberrypi.rpi-imager -y;
flatpak update -y;

##Atualização de versão##
##Pesquisar a versão disponível##
#ostree remote refs fedora;
###(Exemplo!)
#rpm-ostree rebase fedora:fedora/36/x86_64/silverblue;
#rpm-ostree rebase fedora:fedora/36/x86_64/kinoite;
systemctl reboot