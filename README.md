# PoshPlus

PoshPlus's is a tool that sets up a beautiful and generally useful development environment for powershell. It borrows from Oh-my-zsh in nature

## Features

- Installs a package manager (Chocolatey)
- Installs a nice Windows terminal - ConEmu
- Setups a profile.ps1 with nice defaults
- Setups a profile.local.ps1 with more opinionated defaults and options that can be changed
- Provides the beautiful agnoster theme with the solarized color scheme in mind
- Provides all of the git aliases available in oh-my-zsh
    - There is also a function built in to help discover the git aliases called `howto`
    - E.g. `howto commit` will list every alias using a git commit

## Installation
- Run `./install.ps1`
- Open ConEmu the new terminal that comes installed
- Set the color scheme to Solarized
- Change the Main Console Font and Alternative Console Font to Meslo LG M for Powerline
    - This font comes installed with the installation script
