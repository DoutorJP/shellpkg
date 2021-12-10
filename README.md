# Shell Pkg
A minimal, user-maintainable package manageranager written in shell script.
Shell Pkg is designed to work alongside an existing package manager.

# Where are the packages?
One goal of this project is for everything to be user-maintainable. As such, there are no official repositories at this point. That said, creating packages is easy (see below) and repositories can be shared - for example with Git. An example package for Telegram is provided.
TODO: Make a generic example package that actually does nothing.

# How to create a package?
Packages can be created by making a directory in the repository folder and adding three scripts:

- `install.sh`
- `remove.sh`
- `update.sh`

The working directory for each of these scripts is `/tmp`. They will be called by the respective shellpkg-commands and can perform arbitrary operations.

Additionally, a folder `meta` can be contained in the package folder containing three additional optional files:

- `description` (human-readable package description)
- `dependencies` a list of dependencies, lines starting with # are ignored
- `conflicts` a list of conflicting packages, lines starting with # are ignored

# How to install?
Place the files in their respective directories (as indicated by their paths relative to this Git repo) and add /opt/bin to your PATH variable

# Commands

- `shellpkg-install <package>`
- `shellpkg-remove <package>`
- `shellpkg-update <package>`
