echo "Installing minenv..."
pacman -S vim mhwd sudo firefox ranger cmake networkmanager i3 i3-status dmenu pulseaudio pulseaudio-alsa xorg xorg-xinit xorg-server lightdm lightdm-gtk-greeter ttf-dejavu yay 
 --noconfirm
echo "Installing flatpak..."
pacman -S flatpak
echo "Installing yaourt..."
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/
echo "Make swap"
fallocate -l 8G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap sw 0 0' >> /etc/fstab
echo "exec i3"  > ~/.xinitrc
systemctl enable lightdm
yay rtl8821ce-dkms-git
mhwd -r pci video-hybrid-intel-nvidia-bumblebee
echo "Now turn on Nvidia Prime using this guide https://manjaro.ru/how-to/ustanovka-nvidia-prime-na-manjaro.html"
