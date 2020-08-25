# imwheel configuration
sudo apt install -y imwheel
cp imwheelrc ~/.imwheelrc
sudo cp startup.conf /etc/X11/imwheel/startup.conf
imwheel -k

# typing speed
xset r rate 250

# Making korean folder name to English
export LANG=C
xdg-user-dirs-gtk-update
