#!/bin/bash
# Polybar Installation Script
# Author: Isaac Ramirez
# Description: This script automates the installation of Polybar on your system.
#Make sure to run it as a superuser (root).


# Verificar si el usuario es root (requerido para 'sudo make install')
if [ "$EUID" -ne 0 ]; then
  echo "Este script debe ejecutarse con privilegios de superusuario (root)."
  exit 1
fi

# Clonar el repositorio de Polybar desde GitHub
echo "Clonando el repositorio de Polybar..."
git clone --recursive https://github.com/polybar/polybar.git

# Cambiar al directorio de Polybar
cd polybar

# Eliminar la carpeta de compilación actual si existe
if [ -d "build" ]; then
  echo "Eliminando la carpeta de compilación actual..."
  rm -rf build
fi

# Instalar las bibliotecas de ALSA necesarias
echo "Instalando las bibliotecas de ALSA..."
sudo pacman -S alsa-lib alsa-utils

# Ejecutar CMake para configurar la compilación de Polybar
echo "Configurando la compilación de Polybar..."
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DWITH_LIBNL=OFF -DENABLE_ALSA=OFF

# Compilar Polybar
echo "Compilando Polybar..."
make

# Instalar Polybar
echo "Instalando Polybar..."
sudo make install

# Comprobar si la instalación fue exitosa
if [ $? -eq 0 ]; then
  echo "Polybar se ha instalado correctamente."
else
  echo "Error: La instalación de Polybar ha fallado."
fi

# Volver al directorio original
cd ..

# Salir del script
exit 0

