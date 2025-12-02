#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: ./nmap_recon.sh <target-ip>"
    exit 1
fi

TARGET=$1
OUTPUT="recon-$TARGET.txt"

echo "[+] Running Nmap Recon on $TARGET"
nmap -sV -sC -O -T4 $TARGET | tee $OUTPUT

echo "[+] Recon saved to $OUTPUT"
