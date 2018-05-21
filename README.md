# PoshPlus

PoshPlus is a tool that sets up a beautiful and generally useful development environment for powershell. It borrows from Oh-My-Zsh and utilizes the Agnoster theme by default.

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
- Open ConEm - the new terminal that comes installed
- In the startup menu screen
    - Set the startup shell to <b>Powershell<b> or Powershell Admin
    - Set the color scheme to Solarized
- Once ConEmu starts open the settings and find the `Main Console Font` and `Alternative Console Font` settings
    - Change both of them to `Meslo LG M for Powerline`
    - This font comes installed with the installation script
    - <b>If you do not change the font, the powerline symbols will render as a question marks<b>
