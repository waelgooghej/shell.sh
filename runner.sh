#!/bin/bash

# subdomain enum
subfinder -d example.com -o subs.txt
gau -u subs.txt > gau.txt
cat subs.txt gau.txt > all.txt

nuclei -l all.txt -etags ssl -o out.txt
