# Shell Pkg
A minimal, package manageranager written in shell script

# What is this?
This is a Package Manager written in Shell script. It's minimal, not bloated, and lets users with a little knowledge easily mantain their own packages.

> Other package managers work with local packages, that often get old. With Shell Pkg, your packages are download directly from the internet at the time you start an install. And, you don't have to deal with depedencies.
Comment: This is decidedly not true. There are RR distros and systems that are pretty close to being up-to-date at all times. That said, for distros with a stable package base, this might be useful if you need "just that one" updated package. I will add some suggestion to an accompanying issue.

# Where are the packages?
One goal of this project is for everything to be user-maintainable. As such, there are no official repositories at this point. That said, creating packages is easy (see below). An example for Telegram is provided.

# How to create a package?
It's easy. Create a Bash script and point the install to `/opt` and a link on `/usr/bin/local.`
Also, you have to create 3 files. `install.sh`for install, `remove.sh` for unninstall and `update.sh` for updating. All of them needs
to have the exact name. Place them on a folder with the **exact** same name of the package on the shellpkg-repo folder.

# How to install?
I created a Debian package for easy installation, but if you aren't running Debian our Ubuntu, just download the source code, extract, place all the files in `usr/local/bin` and place the `shellpkg-repo` folder in `/opt`.

# Commands

- `shellpkg-install <package>`
- `shellpkg-remove <package>`
- `shellpkg-update <package>`
