#!/bin/bash

echo "nameserver 8.8.8.8" > /etc/resolv.conf

apt update -y

apt install vim -y
# Cria o arquivo .vimrc na home do usuário
cat << EOF > ~/.vimrc
set number
set ruler

set autoindent
set backup

filetype plugin on
syntax on

set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
EOF

# Exibe uma mensagem de sucesso
echo ".vimrc criado com sucesso!"

