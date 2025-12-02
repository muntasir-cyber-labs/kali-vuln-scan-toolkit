#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: ./vuln_scan.sh <target-ip>"
    exit 1
fi

TARGET=$1
OUTPUT="vuln-$TARGET.txt"

echo "[+] Running Nmap Vulnerability Scan on $TARGET"
nmap --script vuln $TARGET -oN $OUTPUT

echo "[+] Vulnerability scan saved to $OUTPUT"
