#!/bin/sh

ZSH_CUSTOM=~/.oh-my-zsh/custom

# install zsh & oh-my-zsh
sudo apt install -y zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s /usr/bin/zsh

# install plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# copy zshrc
cp zshrc ~/.zshrc
sed -i 's/USERNAME/'"$USER"'/g' ~/.zshrc

# all done
zsh
