set -e

# Base system packages
pkgs=(
  base 
  base-devel 
  linux 
  linux-firmware 
  intel-ucode 
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
  git 
  curl 
  reflector             # package mirror list utility
  chezmoi               # dot file manager
  exa                   # ls replacement 
  bat                   # colorized cat
  fd                    # find replacement 
  fasd                  # quick access to files and directories. Similar to autojump/z 
  fzf                   # general-purpose fuzzy finder
  ripgrep               # better grep with .gitignore support
  the_silver_searcher   # alternative to ripgrep
  vim 
  neovim 
  htop 
  neofetch
  tmux
)

echo "Selecting package mirrors."
pacman -Sy reflector
reflector --verbose -l 10 -f 5 -c US -p https --save /etc/pacman.d/mirrorlist
echo "Done."

echo "Installing Arch"
pacstrap /mnt ${pkgs[@]}
genfstab -U /mnt >> /mnt/etc/fstab
echo "Done."

echo "Executing setup script."
curl -s https://www.davidfindley.net/arch/setup.sh > /mnt/root/setup.sh
arch-chroot /mnt "/bin/bash" "/root/setup.sh"
echo "Done."

umount -R /mnt
