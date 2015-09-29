#!/bin/bash
clear

if [ "`id -u`" != 0 ] ; then
echo -e "\n"
exit 1
fi


echo -e "\n"
echo -e "\n"
echo "Ingrese el nombre del usuario: "
read nombre
sudo useradd $nombre

if [ "$nombre" == "" ] ; then
clear
echo -e "\n"
echo "El nombre no puede estar vacío"
echo -e "\n"
exit 1
fi

echo -e "\n"
echo "Ingrese el home directoy (default /home/$nombre): "
read home

if [ "$home" == "" ] ; then
home="/home/$nombre"
fi

echo "Ingrese el grupo :"
read grupo
sudo groupadd $grupo

if [ "$grupo" == "" ] ; then
grupo=1000
fi



echo -e "\n"
echo "Ingrese una contraseña para $nombre"
passwd $nombre

echo -e "\n"
echo "El usuario fue creado satisfactoriamente"
