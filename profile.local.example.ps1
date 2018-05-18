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

# Set up your proxy here
$env:http_proxy = "your_proxy_here:your_port_here"
$env:https_proxy = "your_proxy_here:your_port_here"

# Add your own projects here to quickly access them
# function my-project { cd "~/development/my-project" }
