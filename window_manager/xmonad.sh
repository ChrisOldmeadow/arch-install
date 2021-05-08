#!/usr/bin/env bash
set -euo pipefail


sudo reflector -c "New Zealand" -c Australia -f 15 -p https -a 2 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Syy
sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload
# sudo virsh net-autostart default


# install a helper for the AUR
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
#



# xserver and login manager
sudo pacman -S --noconfirm xorg light-locker lightdm  arandr alarc-gtk-theme arc-icon-theme  pacman-contrib


# sound

paru -S alsa-utils pulseaudio alsa-utils pulseaudio-alsa pavucontrol 

# fonts
sudo pacman dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts font-bh-ttf ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-font-awesome awesome-terminal-fonts nerd-fonts-complete ttf-joypixels




# applications
#
#
paru -S mpv  playerctl scrot  dunst brave kitty picom feh lxappearance dmenu rofi thunar   mpc ncmpcpp mopidy mpdscribble beets  neomutt emacs emacsclient nextcloudclient



# Devel
paru -S r python3 python2 python3-pip java npm



# Office and web
#
#
paru -S brave libreoffice-fresh


sudo flatpak install -y Teams
sudo flatpak install -y zoom
#sudo flatpak install -y spotify
#sudo flatpak install -y kdenlive


# enmable services
sudo systemctl enable lightdm
systemctl -user enable emacs.service
mkdir -p .config/dunst



# window manager
# TODO: change to cabal version to reduce dynamic haskal packages
paru -S xmonad xmonad-contrib

git clone https://github.com/ChrisOldmeadow/xmonad ~/.xmonad
git clone https://github.com/ChrisOldmeadow/nvim ~/.config/nvim
git clone https://github.com/ChrisOldmeadow/zsh ~/.config/zsh
git clone https://github.com/ChrisOldmeadow/dotfiles 

#+begin_src sh
printf "\e[1;32mCHANGE NECESSARY FILES BEFORE REBOOT\e[0m"
