sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo apt update -y && sudo apt dist-upgrade -y
