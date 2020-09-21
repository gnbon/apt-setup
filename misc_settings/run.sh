# imwheel configuration
sudo apt install -y imwheel
cp imwheelrc ~/.imwheelrc
sudo cp startup.conf /etc/X11/imwheel/startup.conf
imwheel -k

# typing speed
xset r rate 250

# install icon theme numix-circle
sudo apt install gnome-tweak-tool numix-icon-theme-circle

# dconf-editor
sudo apt install dconf-editor
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 38

# Making korean folder name to English
export LANG=C
xdg-user-dirs-gtk-update
