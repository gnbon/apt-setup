#!/bin/sh

# downloading gdb family 
echo "[+] Downloading PEDA..."
git clone https://github.com/longld/peda.git ~/gdb/peda

echo "[+] Downloading Pwndbg..."
git clone https://github.com/pwndbg/pwndbg.git ~/gdb/pwndbg
cd ~/gdb/pwndbg
./setup.sh

echo "[+] Downloading GEF..."
git clone https://github.com/hugsy/gef.git ~/gdb/gef

echo "[+] Install finished!"
