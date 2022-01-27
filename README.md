# Welcome to the new shellpkg

Shellpkg is now written in python. More speed, intelligible and easier.

- ### Faster
    Without the download time, it installs an package in less than 2.5 seconds. That's **fast**.

- ### Easier data
    With python, it's now possible to host an remote package (it's already online!). But, you can still create packages easily.

- ### More Human-readable
    Python lang makes easy to create advanced programs that still can be begginer friendly.

## How to install

Move the binary to ```bin``` folder. Keep in mind that we are in an testing release, so, bugs may happen.
**We are not responsible for loss of data.**

### Compiling from source

You will need the following packages:

```bash
python3
```

```bash
pyinstaller
```

You can install pyinstaller using ```pip```.

Execute the following commands:

```bash
git clone https://github.com/Jocadbz/shellpkg.git
```

```bash
cd shellpkg
```

```bash
pyinstaller --onefile pypkg.py
```

Your binary will be located under ```dist``` folder.
