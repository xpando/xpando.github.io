#!/bin/bash

set -e

# Base system packages
pkgs=(
  base 
  base-devel 
  linux 
  linux-firmware 
  intel-ucode 
  hwinfo
  grub 
  networkmanager
  alsa-utils
  pulseaudio-alsa
  pulsemixer 
  bind-tools 
  sudo 
  openssh 
  gnupg 
  zsh 
  tmux
  git 
  curl 
  reflector             # package mirror list utility
  exa                   # ls replacement 
  bat                   # colorized cat
  fd                    # find replacement 
  fasd                  # quick access to files and directories. Similar to autojump/z 
  fzf                   # general-purpose fuzzy finder
  ripgrep               # better grep with .gitignore support
  vim 
  neovim 
  htop 
  neofetch
)

echo "Selecting package mirrors."
pacman -Sy --noconfirm reflector

reflector --verbose -l 10 -f 5 -c US -p https --save /etc/pacman.d/mirrorlist
echo "Done."

echo "Installing Arch"
pacstrap /mnt ${pkgs[@]}
genfstab -U /mnt >> /mnt/etc/fstab
echo "Done."

echo "Executing setup script."
curl -s https://www.davidfindley.net/arch/setup.sh > /mnt/root/setup.sh
chmod +x /mnt/root/setup.sh
arch-chroot /mnt /root/setup.sh
echo "Done."

umount -R /mnt
