#!/bin/bash

inst() {
sudo echo "Entered in sudo mode"
cd /tmp
sudo echo "echo "Hello World!" " >> hello-world-shellpkg
sudo chmod +777 hello-world-shellpkg
sudo mv hello-world-shellpkg /usr/local/bin 
sleep 1
clear
sudo echo "Hello World was installed!"
sleep 1
clear
}
remove() {
sudo echo "Entered in sudo mode"
sudo rm /usr/local/bin/hello-world-shellpkg
echo "Hello World was removed!"
sleep 1
exit 1
}
update() {
echo "Hum..."
sleep 1
echo "I don't think updating a Hello World package would bring any benefit..."
sleep 2
echo "Just sayin..."
}
