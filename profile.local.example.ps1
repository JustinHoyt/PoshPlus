# Configures manual proxy to use your corporate proxy
# Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ProxyEnable -value 1
# Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" ProxyServer -value proxy_here:port_number_here

Set-Theme agnoster
$ThemeSettings.Colors.PromptBackgroundColor = [ConsoleColor]::blue
$ThemeSettings.Colors.PromptForegroundColor = [ConsoleColor]::DarkBlue
$ThemeSettings.Colors.SessionInfoBackgroundColor = [ConsoleColor]::DarkBlue
$ThemeSettings.Colors.GitForegroundColor = [ConsoleColor]::DarkBlue
$ThemeSettings.Colors.GitLocalChangesColor = [ConsoleColor]::Yellow
$ThemeSettings.Colors.GitDefaultColor = [ConsoleColor]::Green
$ThemeSettings.Colors.GitNoLocalChangesAndAheadColor = [ConsoleColor]::White
$ThemeSettings.Colors.AdminIconForegroundColor = [ConsoleColor]::Yellow
$ThemeSettings.Colors.SessionInfoForegroundColor = [ConsoleColor]::DarkGray
$DefaultUser = "$ENV:USERNAME"

$env:http_proxy = "http://proxyvipfmcc.nb.ford.com:83"
$env:https_proxy = "http://proxyvipfmcc.nb.ford.com:83"

# Add your own projects here to quickly access them
# function my-project { cd "~/development/my-project" }
