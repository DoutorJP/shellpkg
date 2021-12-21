#!/bin/bash
sudo wget -P /opt https://telegram.org/dl/desktop/linux
clear
echo "File Downloaded"
sleep 1
sudo mkdir /opt/telegram
clear
echo "Internal folder created"
sleep 1
sudo mv /opt/linux /opt/telegram.tar.xz
clear
echo "File converted"
sleep 1
sudo rm /opt/linux
clear
echo "Temporary files removed"
sleep 1
sudo tar xvf /opt/telegram.tar.xz -C /opt/telegram
clear
echo "Files extracted"
sleep 1
cd /opt
sudo touch telegram-local
sudo mv telegram-local /usr/local/bin
cd /usr/local/bin
sudo chmod +777 telegram-local
sudo echo "cd /opt/telegram/Telegram && ./Telegram" >> telegram-local
clear
echo "Menu created"
sleep 1
cd /opt
sudo rm telegram.tar.xz
cd shellpkg-repo/telegram
sudo rm ram.tar.xz telegram.tar.xz
clear
echo "Package Telegram was installed"
sleep 3
exit 1
