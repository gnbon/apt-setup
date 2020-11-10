sudo apt install -y git
cp gitconfig ~/.gitconfig
cp ./gitmessage ~/.gitmessage
git config --global commit.template ~/.gitmessage
