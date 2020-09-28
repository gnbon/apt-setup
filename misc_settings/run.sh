# imwheel configuration
sudo apt install -y imwheel
cp imwheelrc ~/.imwheelrc
sudo cp startup.conf /etc/X11/imwheel/startup.conf
imwheel -k

# typing speed
xset r rate 250

# Hangul key bindings
sudo sed -i 's/<RALT> = 108;/\/\/ <RALT> = 108;/g' /usr/share/X11/xkb/keycodes/evdev
sudo sed -i 's/<HNGL> = 130;/<HNGL> = 108;/g' /usr/share/X11/xkb/keycodes/evdev

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
