# Shell Pkg
A minimal, user-maintainable package manageranager written in shell script.
Shell Pkg is designed to work alongside an existing package manager.

# How to install?
Place the files in their respective directories (as indicated by their paths relative to this Git repo) and add /opt/bin to your PATH variable

# How to configure?
The configuration file has a very simple format. It’s essentially strictly `option=value` except `sed -ne '/^option=/s/^option=//p'` is being used to parse it so as long as other things don’t get in the way, they will just be ignored.

currently used options:
- `base-directory`: the base directory where to install applications to (default: `/opt`)
- `repo`: the directory of the repo (default: `/opt/usr/share/shellpkg-repo`)

planned options:
- `host-dependency-check`: a command that can be used to check if a given package is installed in another package manager (useful when using shellpkg alongside another package manager, can be disabled by setting it to /bin/false, default: `[ -n "$(apt list --installed | sed -e 's/\/.*//' | grep '^$PACKAGE$')" ]`)

# Where are the packages?
One goal of this project is for everything to be user-maintainable. As such, there are no official repositories at this point. That said, creating packages is easy (see below) and repositories can be shared - for example with Git. An example package for Telegram is provided.
TODO: Make a generic example package that actually does nothing.

# How to create a package?
Packages can be created by making a directory in the repository folder and adding three scripts:

- `install.sh`
- `remove.sh`
- `update.sh`

The working directory for each of these scripts is `/tmp`. They will be called by the respective shellpkg-commands and can perform arbitrary operations.
Environment variables for the installation base directory (`/opt` by default) and the package directory (`/opt/usr/share/shellpkg-repo/<package name>` by default) will be provided as $BASE_DIR and $PACKAGE_DIR.

Additionally, a folder `meta` can be contained in the package folder containing some additional optional files:

- `description` (human-readable package description)
- `dependencies` a list of dependencies, lines starting with # are ignored
- `conflicts` a list of conflicting packages, lines starting with # are ignored
- `version` a version string

# Commands

- `shellpkg-install <package>`
- `shellpkg-remove <package>`
- `shellpkg-update <package>`
- `shellpkg-info <package>`

These do exactly what you’d expect.
There are no commands to list packages or update the package repo because tehse things are easier to do externally (listing the package directory and pulling a git repo, for example).
A search command (to search through descriptions) and a prefetch command (to allow offline operation) may get added in the future.
