#! /bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./dir_enum.sh <domain>"
    exit 1
fi

DOMAIN=$1

echo "[+] Starting Directory Enumeration on $DOMAIN"
gobuster dir -u http://$DOMAIN -w /usr/share/wordlists/dirb/common.txt

