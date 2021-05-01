sudo timedatectl set-ntp true
sudo hwclock --systohc
sudo reflector -c Switzerland -a 12 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy
sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload
# sudo virsh net-autostart default

sudo pacman -S paru
#paru -S --noconfirm lightdm-slick-greeter
#paru -S --noconfirm lightdm-settings
#paru -S --noconfirm polybar
#paru -S --noconfirm nerd-fonts-iosevka
#paru -S --noconfirm ttf-icomoon-feather
#paru -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#paru -S --noconfirm gnome-shell-extension-system76-power-git
#paru -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq echo "MAIN PACKAGES" sleep 5
sudo pacman -S --noconfirm xorg light-locker lightdm xmonad brave kitty picom feh lxappearance dmenu rofi thunar arandr alsa-utils pulseaudio alsa-utils pulseaudio-alsa pavucontrol arc-gtk-theme arc-icon-theme mpv  playerctl scrot  dunst pacman-contrib

sudo pacman dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts font-bh-ttf ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-font-awesome awesome-terminal-fonts

paru -S mpd mpc ncmpcpp mopidy mpdscribble beets

paru -S libre-office  neomutt emacs emacsclient nextcloud

paru -S r python3 python2 python3-pip java npm

#sudo flatpak install -y spotify
#sudo flatpak install -y kdenlive
sudo systemctl enable lightdm
systemctl -user enable emacs.service
mkdir -p .config/dunst

git clone https://github.com/ChrisOldmeadow/xmonad ~/.xmonad
git clone https://github.com/ChrisOldmeadow/nvim ~/.config/nvim
git clone https://github.com/ChrisOldmeadow/zsh ~/.config/zsh
git clone https://github.com/ChrisOldmeadow/dotfiles 

#+begin_src sh
printf "\e[1;32mCHANGE NECESSARY FILES BEFORE REBOOT\e[0m"
