
#!/bin/bash

echo "Welcome to Simple Nmap Bash Scanner"
read -p "Enter the target IP or domain: " target

filename="results/${target}_scan.txt"
mkdir -p results

echo "Scanning host: $target"
echo "Results will be saved in $filename"

echo "Running Ping Scan..." | tee -a $filename
nmap -sn $target | tee -a $filename

echo -e "\nRunning Port Scan..." | tee -a $filename
nmap -F $target | tee -a $filename

echo -e "\nRunning OS Detection and Service Version Scan..." | tee -a $filename
nmap -A $target | tee -a $filename

echo -e "\nScan completed. Check the file: $filename"




