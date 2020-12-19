#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

git clone --separate-git-dir=$HOME/.dotfiles https://github.com/xpando/.dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles