#!/bin/sh

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

echo "[+] Setting finished!"
