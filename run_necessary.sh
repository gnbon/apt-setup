# upgrade packages
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo apt update && sudo apt upgrade

# install essential  packages
sudo apt install vim zsh git tmux

# install for zsh subsetting
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm-rf fonts

# copy setting files
rm ~/.vimrc ; cp ./dotfiles/.vimrc ~/.vimrc
rm ~/.zshrc ; cp ./dotfiles/.zshrc ~/.zshrc
rm ~/.gitconfig ; cp ./dotfiles/.gitconfig ~/.gitconfig
rm ~/.tmux.conf ; cp ./dotfiles/.tmux.conf ~/.tmux.conf

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
