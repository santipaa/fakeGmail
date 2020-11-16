#!/bin/bash

verde="\e[0;32m\033[1m"
fin="\033[0m\e[0m"
rojo="\e[0;31m\033[1m"
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
violeta="\e[0;35m\033[1m"

trap Ctrl_c INT

function Ctrl_c(){
    echo "saliendo :)"
    clear
    exit 0
}






function limpiar(){
    clear
}

function dibujo(){
    echo -e "${azul}
▄████  ██   █  █▀ ▄███▄             ▄▀  █▀▄▀█ ██   ▄█ █     
█▀   ▀ █ █  █▄█   █▀   ▀          ▄▀    █ █ █ █ █  ██ █     
█▀▀    █▄▄█ █▀▄   ██▄▄            █ ▀▄  █ ▄ █ █▄▄█ ██ █     
█      █  █ █  █  █▄   ▄▀         █   █ █   █ █  █ ▐█ ███▄  
 █        █   █   ▀███▀            ███     █     █  ▐     ▀ 
  ▀      █   ▀                            ▀     █           
        ▀                                      ▀            
${fin}"
}
limpiar
echo -e "\t${amarillo}[*]Iniciando el programa${fin}"
sleep 2s
echo 
echo
echo -e "\t${amarillo}[*]ALERTA: probablemente estos gmail falsos vallan a la casilla de spam${fin}" 
sleep 3s
limpiar
dibujo

function nombre(){
    echo -n -e "${rojo}\t[*]NOMBRE A SUPLANTAR: ${fin}" 
    read -r nombree
}
nombre
function suplantar(){
    echo -n -e "${rojo}\t[*]CORREO A SUPLANTAR: ${fin}" 
    read -r suplantarr
}
suplantar
function victima(){
    echo -n -e "${rojo}\t[*]CORREO DE LA VICTIMA: ${fin}" 
    read -r victimaa
}
victima
function asunto(){
    echo -n -e "${rojo}\t[*]ASUNTO DEL CORREO: ${fin}" 
    read -r asuntoo
}
asunto
function mensaje(){
    echo -n -e "${rojo}\t[*]MENSAJE A ENVIAR: ${fin}" 
    read -r mensajee
}
mensaje
function enviando(){
    echo -n "${rojo}\t[*]ENVIANDO CORREO ${fin}" 
    curl --data "
	nombre=$nombree && remitente=$suplantarr && destinatario=$victimaa && asunto=$asuntoo && mensaje=$mensajee" https://shelterless-catches.000webhostapp.com/enviarMail.php > /dev/null 2>&1
}
enviando