#!/bin/sh

# downloading gdb family 
echo "[+] Downloading PEDA..."
git clone https://github.com/longld/peda.git ~/gdb/peda

echo "[+] Downloading Pwndbg..."
git clone https://github.com/pwndbg/pwndbg.git ~/gdb/pwndbg
~/gdb/pwndbg/setup.sh

echo "[+] Downloading GEF..."
git clone https://github.com/hugsy/gef.git ~/gdb/gef

# setting commands
echo "[+] Setting .gdbinit..."
cp gdbinit ~/.gdbinit

{
  echo "[+] Creating files..."
    sudo cp peda /usr/bin/peda &&\
    sudo cp pwndbg /usr/bin/pwndbg &&\
    sudo cp gef /usr/bin/gef
} || {
  echo "[-] Permission denied"
    exit
}

{
  echo "[+] Setting permissions..."
    sudo chmod +x /usr/bin/peda /usr/bin/pwndbg /usr/bin/gef
} || {
  echo "[-] Permission denied"
    exit
}

echo "[+] Done"
