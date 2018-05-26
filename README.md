# PoshPlus

PoshPlus is a tool that sets up a beautiful and generally useful development environment for powershell. It borrows from Oh-My-Zsh and implements some of its features.

![Example of context aware theme and colors](https://github.com/JustinHoyt/PoshPlus/blob/master/img/PoshPlusExample.PNG)

## Features

- Provides a beautiful terminal experience
- Comes with the Chocolatey package manager
- Installs any number of packages you give the install script
- Setups a profile.ps1 with sane defaults and a profile.local.ps1 where you can set your own preferences
- Up arrow searches through command history
- Provides all of the over 100 git aliases available in oh-my-zsh
    - There is also a function built in to help discover the git aliases called `howto`
    - E.g. `howto commit` will list every alias using a git commit


## Installation
- Run `./install.ps1`
    - for more information on what you can install with the install script, read the section [below](#what-can-i-install-with-the-install-script)
- Open ConEmu - the new terminal that comes installed
- In the startup menu screen
    - Set the startup shell to <b>Powershell</b> or <b>Powershell Admin</b>
    - Set the color scheme to Solarized
- Once ConEmu starts open the settings and find the `Main Console Font` and `Alternative Console Font` settings
    - Change both of them to `Meslo LG M for Powerline`
    - This font comes installed with the installation script
    - <b>If you do not change the font, the powerline symbols will render as a question marks</b>

## What Can I Install with the Install Script?

The install script will install any number of chocolatey packages you need. A few packages are given aliases in the script to make them more intuitive to use than their chocolatey names. For example, `intellij` will install the `intellijidea-ultimate` chocolatey package.

### Example Installation

`./install intellij java10 vscode node9`

Other examples of packages you can install are:
* atom
* vim
* python
* eclipse
* virtualbox
* vagrant
* Any of the packages [here](https://chocolatey.org/search?q=) by just giving the name of the package.

