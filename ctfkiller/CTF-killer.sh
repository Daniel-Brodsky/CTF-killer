#!/bin/bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "[-] Don't run this script directly. Use: source $0"
    exit 1
fi
# This is a check for the file to executed in the proper way.


echo "Welcom to the Daniel Brodsky CTF script for alias and temporary variable"
cat CTF-killer-asciiART.txt
echo "please be aware this script --MUST-- to be initialized by the command 'source' to make sure that all the TEMPORARY variables are in this preticular shell!!! otherwise the script won't work..."

echo -n "Enter the Target IP: "
read TARGETIP

echo -n "Enter the name of CTF Machine: "
read CTFNAME

#takes values from the user later to be used for the porpuse of this script

export TARGETIP
export CTFNAME

export TIMESTAMP=$(date +"%d-%m-%Y_%H-%M")
CTFDIR="${CTFNAME}_${TIMESTAMP}_HTB"
mkdir -p ./"$CTFDIR" || { echo "[-] Failed to create directory."; exit 1; }
# makes a dir for the ctf by its name and timestamp

export NOTES="${CTFDIR}/${CTFNAME}_notes.md"
touch "$NOTES"
# creates an md file for all the intel or notes gather in this ctf context

NMAPFILE="${CTFDIR}/${CTFNAME}_nmap.txt"
echo "#---------------------------------------------------------------------#"
echo "[*] Running Nmap scan on $TARGETIP..."
nmap -sC -sV "$TARGETIP" -oN "$NMAPFILE" &
wait $!
echo "[+] Nmap scan saved to $NMAPFILE"
echo "#---------------------------------------------------------------------#"
# This creates an nmap scan file for us..

echo "🎯 Initialization complete:"
echo "Target IP:------------  $TARGETIP"
echo "Machine Name:------------  $CTFNAME"
echo "Working Directory:------------  $CTFDIR"
echo "Notes File:------------  $NOTES"
echo "Nmap Results:------------  $NMAPFILE"

return 0
