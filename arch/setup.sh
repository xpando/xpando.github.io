pkgs=(
  powerline-fonts-git   # better font for ttys
  antibody-bin          # zsh plugin manager
  starship-bin          # prompt
)

##################################################################
# Timezone 
##################################################################
ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

##################################################################
# Locale
##################################################################
sed --in-place=.bak 's/^#en_US\./' /etc/locale.gen
locale-gen
cat << EOF
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF > /etc/locale.conf

##################################################################
# Network Configuration
##################################################################
read -r -p "Enter host name:" hostname

echo "$hostname" > /etc/hostname
cat << EOF
127.0.0.1   localhost
::1         localhost
127.0.0.1   $hostname
EOF > /etc/hosts

systemctl enable NetworkManager
systemctl enable sshd

##################################################################
# Boot Loader Configuration
##################################################################
read -r -p "Enter boot device (default: /dev/sda)" $boot_device
grub-install --target=i386-pc ${boot_device:-/dev/sda}
grub-mkconfig -o /boot/grub/grub.cfg

##################################################################
# User Configuration
##################################################################
echo "Root password:"
passwd

read -r -p "Enter user name:" username
useradd -mg users -G wheel -s /usr/bin/zsh $username
passwd $username

##################################################################
# Sudo Configuration
##################################################################
echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

##################################################################
# AUR Configuration
##################################################################
echo "Installing additional AUR packages..."
git clone https://aur.archlinux.org/yay.git ~/tmp/yay
cd /tmp/yay
makepkg -si
cd ~
rm -rf /tmp/yay

##################################################################
# Install additional packages
##################################################################
yay -Syyu --noconfirm --nodiffmenu --noeditmenu ${pkgs[@]}

##################################################################
# Console/TTY font
##################################################################
cat << EOF
KEYMAP=us
FONT=ter-powerline-v24n
EOF > /etc/vconsole.conf

##################################################################
# Dot files 
##################################################################
sudo -u $username chezmoi init https://github.com/xpando/dotfiles.git --apply
