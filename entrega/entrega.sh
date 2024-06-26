# Entrega Nombre Apellido - NumeroDeEstudiante
#!/bin/bash
title(){
    azul='\033[0;34m'
    sinColor='\033[0m'
    echo -e "${azul}Menu${sinColor}"
}

menu(){
    echo "1"
    echo "2"
    echo "3"
    echo "4"
    echo "Presione 5 para salir"
    echo -e "${azul}Ingrese su opcion${sinColor}"
}

primeraOpcion(){
    echo "Hola! Elegiste la primera opcion"
    continuarRosado
}

segundaOpcion(){
    echo "Hola! Elegiste la segunda opcion"
    continuarRosado
}

terceraOpcion(){
     echo "Hola! Elegiste la tercera opcion"
    continuarRosado
}

cuartaOpcion(){
    echo "Hola! Elegiste la cuarta y ultima opcion"
    continuarRosado
}

salir(){
    exit
}

continuarRosado(){
    texto="Presione enter para continuar"
    rosado='\033[1;35m' 
    sinColor='\033[0m' 
    echo -e "${rosado}$texto${sinColor}"
    read -r
}

while true; do
    title
    menu
    read opcion
    case $opcion in
        1) primeraOpcion;;
        2) segundaOpcion;;
        3) terceraOpcion;;
        4) cuartaOpcion;;
        5) salir;;
        *) echo "Vuelva a intentar";;
    esac
done
