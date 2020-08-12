# upgrade packages
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
# sudo sed 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo apt update && sudo apt upgrade

# install essential  packages
sudo apt install vim zsh git tmux

#install for zsh subsetting
git clone https://github.com/powerline/fonts.git --depth=1 && ./install.sh && ./install.sh && cd .. && rm-rf fonts
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# make symbolic link
rm ~/.vimrc && ln -s ./dotfiles/.vimrc ~/.vimrc
rm ~/.zshrc && ln -s ./dotfiles/.zshrc ~/.zshrc
rm ~/.gitconfig && ln -s ./dotfiles/.gitconfig ~/.gitconfig
rm ~/.tmux.conf && ln -s ./dotfiles/.tmux.conf ~/.tmux.conf
