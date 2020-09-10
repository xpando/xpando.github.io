#!/bin/bash

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
sed --in-place=.bak -r 's/^#(en_US.+)/\1/' /etc/locale.gen
locale-gen
cat << EOF > /etc/locale.conf
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF

##################################################################
# Network Configuration
##################################################################
read -r -p "Enter host name:" hostname

echo "$hostname" > /etc/hostname
cat << EOF > /etc/hosts
127.0.0.1   localhost
::1         localhost
127.0.0.1   $hostname
EOF

systemctl enable NetworkManager
systemctl enable sshd

##################################################################
# Boot Loader Configuration
##################################################################
read -r -p "Enter boot device (default: /dev/sda)" $boot_device
grub-install --target=i386-pc ${boot_device:-/dev/sda}
# TODO: add the following to /etc/default/grub
#GRUB_CMDLINE_LINUX_DEFAULT="quiet nomodeset"
#GRUB_GFXMODE=1920x1200x32,1600x1200x32,1900x1080x32,1024x768x32,auto
#GRUB_GFXPAYLOAD_LINUX=keep
grub-mkconfig -o /boot/grub/grub.cfg

##################################################################
# User Configuration
##################################################################
echo "Setting Root Password"
passwd

read -r -p "Enter user name:" username
useradd -mg users -G wheel -s /usr/bin/zsh $username
passwd $username

##################################################################
# Sudo Configuration
##################################################################
echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

##################################################################
# Console/TTY font
##################################################################
cat << EOF > /etc/vconsole.conf
KEYMAP=us
FONT=ter-powerline-v24n
EOF

##################################################################
# AUR Configuration
##################################################################
echo "Installing additional AUR packages..."
mkdir -p /tmp/yay
chown $username /tmp/yay
sudo -u $username git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
sudo -u $username makepkg -si --noconfirm
cd ~
rm -rf /tmp/yay

##################################################################
# Install additional packages
##################################################################
sudo -u $username yay -S \
  --noconfirm --nodiffmenu --noeditmenu \
  ${pkgs[@]}

##################################################################
# Dot files 
##################################################################
sudo -u $username chezmoi init \
  https://github.com/xpando/dotfiles.git \
  --apply
