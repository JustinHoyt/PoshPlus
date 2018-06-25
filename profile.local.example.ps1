# Modify your theme and theme colors here
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

# Enable Vim mode here
# Set-PSReadLineOption -EditMode vi
# Set-PSReadLineKeyHandler -Key Ctrl+P -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key Ctrl+N -Function HistorySearchForward

# Set up your proxy here
# $env:http_proxy = "your-proxy-here:your-port-here"
# $env:https_proxy = "your-proxy-here:your-port-here"

# Add your own projects here to quickly access them
# function my-project { cd "~/path-to-project/my-project" }

# Keep this at the bottom of the file
# Comment out to go back to cycling through autocomplete options
Invoke-Expression "git config --global http.proxy http://proxyvipfmcc.nb.ford.com:83"
