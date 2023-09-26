# Polybar Installation Guide

This guide will walk you through the process of installing Polybar, a popular status bar for Linux, using a handy installation script. Please note that this script is specifically designed for Manjaro with i3, as there is a known issue where the network module may not work properly if you install Polybar directly from the Manjaro repository.

**Table of Contents**
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Note on Network Module](#note-on-network-module)
- [Español](#guia-de-instalacion-de-polybar).

## Prerequisites
Before you proceed with the installation, ensure that you have the following prerequisites:
- A Manjaro Linux system with the i3 window manager.
- A working internet connection.

## Installation
Follow these steps to install Polybar on your system.

1. **Clone repository**
   
   - Run the following command to make the script executable:
     ```
     git clone https://github.com/ElIsaac/polybar-manjaro-i3
     cd polybar-manjaro-i3
     mv ./install_polybar.sh ~
     cd ..
     sudo rm -rf polybar-manjaro-i3
     cd ~

2. **Make the Script Executable:**
   - Open your terminal and navigate to the directory where you saved the script.
   - Run the following command to make the script executable:
     ```
     chmod +x install_polybar.sh
     ```

3. **Run the Installation Script:**
   - Execute the script with superuser privileges using the following command:
     ```
     sudo ./install_polybar.sh
     ```

## Usage
After successfully running the installation script, Polybar should be installed on your system. You can now use Polybar to customize your status bar and display various information on your desktop.

## Note on Network Module
In Manjaro with i3, there is a known issue where the network module in Polybar may not work properly when installed directly from the Manjaro repository. This issue can result in Polybar displaying "disconnected" even when you have a working internet connection.

To address this issue, the installation script provided in this guide includes specific compilation options (`-DWITH_LIBNL=OFF -DENABLE_ALSA=OFF`) that should help ensure the network module functions correctly.

Enjoy using Polybar on your Manjaro i3 setup!


## Guia de Instalacion de Polybar

Esta guía te llevará a través del proceso de instalación de Polybar, una popular barra de estado para Linux, utilizando un práctico script de instalación. Ten en cuenta que este script está diseñado específicamente para Manjaro con i3, ya que existe un problema conocido donde el módulo de red puede no funcionar correctamente si instalas Polybar directamente desde el repositorio de Manjaro.

**Tabla de Contenidos**
- [Prerrequisitos](#prerrequisitos)
- [Instalación](#instalación)
- [Uso](#uso)
- [Nota sobre el Módulo de Red](#nota-sobre-el-módulo-de-red)

## Prerrequisitos
Antes de proceder con la instalación, asegúrate de tener los siguientes prerrequisitos:
- Un sistema Manjaro Linux con el gestor de ventanas i3.
- Una conexión a Internet funcional.

## Instalación
Sigue estos pasos para instalar Polybar en tu sistema.

1. **Clonar repositorio**
   
   - Run the following command to make the script executable:
     ```
     git clone https://github.com/ElIsaac/polybar-manjaro-i3
     cd polybar-manjaro-i3
     mv ./install_polybar.sh ~
     cd ..
     sudo rm -rf polybar-manjaro-i3
     cd ~

2. **Hacer Ejecutable el Script:**
   - Abre tu terminal y navega al directorio donde guardaste el script.
   - Ejecuta el siguiente comando para hacer que el script sea ejecutable:
     ```
     chmod +x install_polybar.sh
     ```

3. **Ejecutar el Script de Instalación:**
   - Ejecuta el script con privilegios de superusuario utilizando el siguiente comando:
     ```
     sudo ./install_polybar.sh
     ```

## Uso
Después de ejecutar con éxito el script de instalación, Polybar debería estar instalado en tu sistema. Ahora puedes utilizar Polybar para personalizar tu barra de estado y mostrar información variada en tu escritorio.

## Nota sobre el Módulo de Red
En Manjaro con i3, existe un problema conocido donde el módulo de red en Polybar puede no funcionar correctamente cuando se instala directamente desde el repositorio de Manjaro. Este problema puede hacer que Polybar muestre "desconectado" incluso cuando tienes una conexión a Internet funcionando.

Para abordar este problema, el script de instalación proporcionado en esta guía incluye opciones de compilación específicas (`-DWITH_LIBNL=OFF -DENABLE_ALSA=OFF`) que deberían ayudar a garantizar que el módulo de red funcione correctamente.

¡Disfruta usando Polybar en tu configuración Manjaro i3!



