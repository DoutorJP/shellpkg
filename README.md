# Welcome to shellpkg
![](https://img.shields.io/badge/Writen%20in-Python-blue?logo=python)

- Faster - Without the download time, it installs an package in less than 2.5 seconds. That's **fast**.
- Easier data - With python, it's now possible to host an remote package (it's already online!). But, you can still create packages easily.
- More Human-readable - Python lang makes easy to create advanced programs that still can be begginer friendly.

### How to install

Move the binary to ```bin``` folder. Keep in mind that we are in an testing release, so, bugs may happen.
We are not responsible for loss of data.

### Compiling from source

You will need the following packages:

``` bash
sudo pacman -S python python-pip # Arch-based
sudo apt install python3 python3-pip # Ubuntu/Debian-Based
sudo dnf install python3 python3-pip # Fedora-Based
```
After installing python and pip on your distro, you need to install `pyinstaller` via `pip3`:
```
pip3 install pyinstaller
```
add local bin to your `.bashrc` or whatever .rc that your shell use: `echo /home/$USER/.local/share/bin:$PATH >> .bashrc`

Now, execute the following commands:

```git clone https://github.com/Jocadbz/shellpkg.git```

```cd shellpkg```

```pyinstaller --onefile pypkg.py```

Your binary will be located under **dist** folder.

(If you are looking for the legacy version, please check the [legacy](https://github.com/Jocadbz/shellpkg/tree/legacy) branch.)

Shellpkg is now written in python. More speed, intelligible and easier.


Move the binary to ```bin``` folder. Keep in mind that we are in an testing release, so, bugs may happen.
**We are not responsible for loss of data.**
