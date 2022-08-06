#!/bin/bash

echo "Atualizar o Sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando os aplicativos do servidor..."

app-get install apache2 -y
app-get install unzip -y

echo "Buscando arquivos no git..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



