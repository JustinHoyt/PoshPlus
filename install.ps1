# Configures manual proxy to use your corporate proxy
# Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ProxyEnable -value 1
# Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ProxyServer -value proxy_here:port_number_here

# Installs chocolatey
$env:chocolateyUseWindowsCompression = 'true'
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Installs necessary chocolatey packages
choco install -y conemu
choco install -y git

# Installs Powershell tools
PowerShellGet\Install-Module posh-git -Confirm:$false
PowerShellGet\Install-Module oh-my-posh -Confirm:$false
if(!(Test-Path "~/fonts" -PathType Container)) { 
    git clone https://github.com/powerline/fonts.git $HOME/fonts
    ~/fonts/install.ps1 "Meslo LG M Regular for Powerline"
}

$installList = @{
    "intellij" = "intellijidea-ultimate"
    "node8" = "nodejs.install --version 8.11.2"
    "node9" = "nodejs.install --version 9.11.1"
    "node10" = "nodejs.install --version 10.2.1"
    "node" = "nodejs.install"
    "java8" = "jdk8"
    "java10" = "jdk10"
}
foreach ($item in $args) {
    if($installList.Contains($item)) {
        Invoke-Expression "choco install -y " + $installList[$item]
    } else {
        Invoke-Expression "choco install -y " + $item
    }
}

# Installs Powershell profile alongside any current one
If (Test-Path -Path "~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1") {
    rm -Force ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
}

If (Test-Path -Path "./profile.local.ps1") {
    echo "Profile.local is already set up"
} else {
    echo "Profile.local not created. Now making"
    cp profile.local.example.ps1 profile.local.ps1
}

New-Item -Path $HOME/Documents/WindowsPowerShell/profile.ps1 -ItemType SymbolicLink -Value ./profile.ps1 -ErrorAction:SilentlyContinue
New-Item -Path $HOME/Documents/WindowsPowerShell/profile.local.ps1 -ItemType SymbolicLink -Value ./profile.local.ps1 -ErrorAction:SilentlyContinue
