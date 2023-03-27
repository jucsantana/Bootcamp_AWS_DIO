#! /bin/bash

echo "atualizando o SO..." 
apt-get update -y
apt-get upgrade -y

echo "instalando servidor apache..." 
apt-get install apache2 -y

echo "instalando unzip...”
apt-get install unzip -y

echo "baixando e descompactando os arquivos da aplicação" 
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main

echo "copiando os arquivos para o diretório do Apache" 
cp * /var/www/html -R

echo "script finalizado"

