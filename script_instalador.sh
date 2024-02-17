#!/bin/bash

echo "Atualizando sistema"

apt-get update
apt-get upgrade -y

echo "Instalando apache2: "

apt-get install apache2 -y

echo "Instalando unzip: "

apt-get install unzip -y

cd /tmp

echo "Baixando projeto do github..."

wget https://github.com/schelbauer166/portifolio/archive/refs/heads/main.zip

unzip main.zip

cd portifolio-main

echo "Copiando projeto para o apache: "
cp -R * /var/www/html/

echo "Restarte no apache para possivel evitar erro: "

systemctl restart apache2
