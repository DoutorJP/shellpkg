# Shell Pkg
A minimal, Highly configurable Package Manager written in Shell script

# What is this?
This is a Package Manager written in Shell script. It's minimal, not bloated, and let users with a little of knowledge easy mantain their own packages.
Other package managers work with local packages, that often get old. With Shell Pkg, your packages are download directly from the internet at the time
you start an install. And, you don't have to deal with depedencies.

# Where are the packages?
In this package manager, we give the **users** the freedom to create their own packages. So he don't host or curate any of them. I created a package of "Telegram" to serve as an example.

# How to create a package?
It's easy. Create a Bash script and point the install to ```/opt``` and a link on ```/usr/bin/local.```
Also, you have to create 3 files. ```install.sh```for install, ```remove.sh``` for unninstall and ```update.sh``` for updating. All of them needs
to have the exact name. Place them on a folder with the **exact** same name of the package on the shellpkg-repo folder. 

# How to install?
I created a Debian package for it's reability, but if you aren't running Debian our Ubuntu, just download the Zip file, extract, place all the files in the folder
on ```usr/local/bin``` and place the ```shellpkg-repo```folder on ```/opt``` folder.
