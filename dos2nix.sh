#!/bin/env sh

# Simple script to convert DOS linefeed to *NIX linefeed

# Usage: dos2nix.sh < input_file > output_file

#TODO: Imporve this piece of shit
tr -d '\r'
#tr -d '\015'

# 
#sed 's/
#sed -e 's/
# Whe we don't want to delete '\n'
#sed ':a;N;$!ba;s/\n//g'
# This one below just tries to delete the CR
#sed -e 's/.$//'