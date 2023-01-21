#!/bin/bash

echo "Atualizando o servidor"
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo os arquivos da aplicação"
unzip main.zip

echo "Copiado os arquivos da aplicação"
cd linux-site-dio-main
cp -R * /var/www/html