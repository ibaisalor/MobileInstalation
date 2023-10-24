#!/bin/bash

OLD_PWD=`pwd`

echo "Script de instalación de recursos para Ataques a aplicaciones móviles"
sleep 1

echo "1 - Instalando paquetes..."
sudo apt install -y jadx apktool jd-gui enjarify aapt dx android-tools-adb android-tools-fastboot python3-dev python3-venv python3-pip build-essential libffi-dev libssl-dev wkhtmltopdf libxml2-dev libxslt1-dev libjpeg62-turbo-dev zlib1g-dev git openjdk-11-jdk
echo "2 - Descargando aplicaciones Java..."
mkdir -p $HOME/Software/AplicacionesMóviles/Uber-APK-Signer && cd $HOME/Software/AplicacionesMóviles/Uber-APK-Signer
wget -c https://github.com/patrickfav/uber-apk-signer/releases/download/v1.1.0/uber-apk-signer-1.1.0.jar
cd $OLD_PWD
mkdir -p $HOME/Software/AplicacionesMóviles/Luyten && cd $HOME/Software/AplicacionesMóviles/Luyten
wget -c https://github.com/deathmarine/Luyten/releases/download/v0.5.4_Rebuilt_with_Latest_depenencies/luyten-0.5.4.jar
cd $OLD_PWD
echo "3 - Descargando Repositorios Github..."
cd $HOME/Software/AplicacionesMóviles && git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git MobSF
cd $HOME/Software/AplicacionesMóviles && git clone https://github.com/nccgroup/house House
cd $HOME/Software/AplicacionesMóviles/MobSF && ./setup.sh
cd $HOME/Software/AplicacionesMóviles/House && pip3 install -r requirements.txt
cd $OLD_PWD
echo "4 - Instalando Frida..."
pip3 install frida-tools

echo "Herramientas instaladas : "
echo "- Paquetes : jadx, jadx-gui, apktool, jd-gui, enjarify, aapt, zipalign, dx, android-tools-adb, android-tools-fastboot"
echo "- Aplicaciones Java : $HOME/Software/AplicacionesMóviles/Uber-APK-Signer"
echo "                      $HOME/Software/AplicacionesMóviles/Luyten"
echo "- Repositorios Git : $HOME/Software/AplicacionesMóviles/MobSF"
echo "                     $HOME/Software/AplicacionesMóviles/House"
echo "- Paquetes Python : frida-tools"
