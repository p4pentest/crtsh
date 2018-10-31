#!/bin/bash
echo "Enter domain name:"
read domain
echo "Enter the name of output file with subdomains"
read subdomains
curl -s https://crt.sh/?q=%25.$domain | grep "$domain" | grep "<TD>" | cut -d">" -f2 | cut -d"<" -f1 | sort -u | sed s/*.//g > $subdomains
