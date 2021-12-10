#!/bin/bash

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

