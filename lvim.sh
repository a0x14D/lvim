#!/bin/bash

#basic coloers 
red='\033[1;31m'
green='\033[1;32m'
NC='\033[0m'

#check lvim directory
if [ -d ~/.config/lvim ]; then
    echo -e "${green}lvim directory already exists${NC}"
    echo -e "${red} $0 -r ${NC} to remove lvim directores"
else
    echo -e "${green}lvim directory does not exist${NC}"
    bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
fi

#remove arguments lvim
rvim() {
  rm -rf ~/.config/lvim
  rm -rf ~/.local/share/lunarvim
  rm -rf ~/.cache/lvim 
  rm -rf ~/.local/bin/lvim 
  rm -rf ~/.local/share/nvim 
}

if [ "$1" = "-r" ]; then
    echo -e "${red}removing lvim${NC}"
    rvim
fi
