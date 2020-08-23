#!/bin/bash
function apt_kakao_update() {
	sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
	sudo sed 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
	sudo apt update -y && sudo apt dist-upgrade -y
}

# Install Packages
function install_essential() {
	sudo apt install -y gcc 
}

function install_vim() {
	sudo apt install -y vim 
	rm ~/.vimrc ; cp ./dotfiles/.vimrc ~/.vimrc
}

function install_zsh() {
	sudo apt install -y zsh 
	git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -rf fonts
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
	rm ~/.zshrc ; cp ./dotfiles/.zshrc ~/.zshrc
}

function install_git() {
	sudo apt install -y git 
	rm ~/.gitconfig ; cp ./dotfiles/.gitconfig ~/.gitconfig
}

function install_tmux() {
	sudo apt install tmux -y
	rm ~/.tmux.conf ; cp ./dotfiles/.tmux.conf ~/.tmux.conf
}

function install_chrome() {
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	sudo apt-get update 
	sudo apt-get install google-chrome-stable
	# sudo rm -rf /etc/apt/sources.list.d/google.list
}

function install_gdb() {
	sudo apt install -y install_gdb
	git clone https://github.com/longld/peda.git ~/App/peda
	git clone https://github.com/pwndbg/pwndbg.git ~/App/pwndbg && ~/App/pwndbg/setup.py
	echo "source ~/App/peda/peda.py" >> ~/.gdbinit
	echo "source ~/App/pwndbg/gdbinit.py" >> ~/.gdbinit
}

function install_vscode() {
	sudo apt install -y curl
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get install apt-transport-https
	sudo apt-get update
	sudo apt-get install code
	# sudo rm -rf /etc/apt/sources.list.d/vscode.list
}

# Set Configurations
function set_alias() {
	./alias >> ~/.zshrc
}

function set_key_and_wheel() {
	xset r rate 250
	sudo apt install -y imwheel
	cp -f ./dotfiles/.imwheelrc ~/.imwheelrc
	cp -f startup.conf /etc/X11/imwheel/startup.conf
	imwheel -k
}
