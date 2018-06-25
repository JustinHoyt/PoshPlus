Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Import-Module Posh-Git
Import-Module oh-my-posh

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Add git utilities to the path
$env:Path += ";C:\Program Files\Git\usr\bin"

# Git Aliases
Set-Alias -Name g -Value git
Remove-Item alias:gl -Force
Remove-Item alias:gp -Force
Remove-Item alias:gc -Force
Remove-Item alias:gcm -Force
Remove-Item alias:gcs -Force
Remove-Item alias:gm -Force
Remove-Item alias:ls -Force
Remove-Item alias:gcb -Force

$POSH_PLUS_PROFILE = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\profile.ps1"
$LOCAL_PROFILE = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\profile.local.ps1"

function ls { get-childitem $args[0] | Format-Wide -AutoSize }
function ga { git add $args }
function gaa { git add --all $args }
function gap { git apply $args }
function gapa { git add --patch $args }
function gau { git add --update $args }
function gb { git branch $args }
function gba { git branch -a $args }
function gbd { git branch -d $args }
function gbda { git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d $args }
function gbl { git blame -b -w $args }
function gbnm { git branch --no-merged $args }
function gbr { git branch --remote $args }
function gbs { git bisect $args }
function gbsb { git bisect bad $args }
function gbsg { git bisect good $args }
function gbsr { git bisect reset $args }
function gbss { git bisect start $args }
function gc { git commit -v $args }
function gc! { git commit -v --amend $args }
function gca { git commit -v -a $args }
function gca! { git commit -v -a --amend $args }
function gcam { git commit -a -m $args }
function gcan! { git commit -v -a --no-edit --amend $args }
function gcans! { git commit -v -a -s --no-edit --amend $args }
function gcb { git checkout -b $args }
function gcd { git checkout develop $args }
function gcf { git config --list $args }
function gcl { git clone --recursive $args }
function gclean { git clean -fd $args }
function gcm { git checkout master $args }
function gcmsg { git commit -m $args }
function gcn! { git commit -v --no-edit --amend $args }
function gco { git checkout $args }
function gcount { git shortlog -sn $args }
function gcp { git cherry-pick $args }
function gcpa { git cherry-pick --abort $args }
function gcpc { git cherry-pick --continue $args }
function gcs { git commit -S $args }
function gcsm { git commit -s -m $args }
function gd { git diff $args }
function gdca { git diff --cached $args }
function gdct { git describe --tags `git rev-list --tags --max-count=1` $args }
function gdcw { git diff --cached --word-diff $args }
function gdt { git diff-tree --no-commit-id --name-only -r $args }
function gdw { git diff --word-diff $args }
function gf { git fetch $args }
function gfa { git fetch --all --prune $args }
function gfo { git fetch origin $args }
function gg { git gui citool $args }
function gga { git gui citool --amend $args }
function ggpull { git pull origin $(git_current_branch) $args }
function ggpur { g $args }
function ggpush { git push origin $(git_current_branch) $args }
function ggsup { git branch --set-upstream-to=origin/$(git_current_branch) $args }
function ghh { git help $args }
function gignore { git update-index --assume-unchanged $args }
function gignored { git ls-files -v | grep "^[[:lower:]]" $args }
function git-svn-dcommit-push { git svn dcommit; git push github master:svntrunk $args }
function gk { \gitk --all --branches $args }
function gke { \gitk --all $(git log -g --pretty=%h) $args }
function gl { git pull $args }
function glg { git log --stat $args }
function glgg { git log --graph $args }
function glgga { git log --graph --decorate --all $args }
function glgm { git log --graph --max-count=10 $args }
function glgp { git log --stat -p $args }
function glo { git log --oneline --decorate $args }
function globurl { noglob urlglobber  $args }
function glog { git log --oneline --decorate --graph $args }
function gloga { git log --oneline --decorate --graph --all $args }
function glol { git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\ $args }
function glola { git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all $args }
function glp { git_log_prettil $args }
function glum { git pull upstream master $args }
function gm { git merge $args }
function gma { git merge --abort $args }
function gmom { git merge origin/master $args }
function gmt { git mergetool --no-prompt $args }
function gmtvim { git mergetool --no-prompt --tool=vimdiff $args }
function gmum { git merge upstream/master $args }
function gp { git push $args }
function gpd { git push --dry-run $args }
function gpoat { git push origin --all; git push origin --tags $args }
function gpristine { git reset --hard; git clean -dfx $args }
function gpsup { git push --set-upstream origin $(git_current_branch) $args }
function gpu { git push upstream $args }
function gpv { git push -v $args }
function gr { git remote $args }
function gra { git remote add $args }
function grb { git rebase $args }
function grba { git rebase --abort $args }
function grbc { git rebase --continue $args }
function grbi { git rebase -i $args }
function grbm { git rebase master $args }
function grbs { git rebase --skip $args }
function grdl { ./gradlew  $args }
function grh { git reset HEAD $args }
function grhh { git reset HEAD --hard $args }
function grmv { git remote rename $args }
function grrm { git remote remove $args }
function grset { git remote set-url $args }
function grt { cd $(git rev-parse --show-toplevel; echo ".") $args }
function gru { git reset -- $args }
function grup { git remote update $args }
function grv { git remote -v $args }
function gsb { git status -sb $args }
function gsd { git svn dcommit $args }
function gsi { git submodule init $args }
function gsps { git show --pretty=short --show-signature $args }
function gsr { git svn rebase $args }
function gss { git status -s $args }
function gst { git status $args }
function gsta { git stash save $args }
function gstaa { git stash apply $args }
function gstc { git stash clear $args }
function gstd { git stash drop $args }
function gstl { git stash list $args }
function gstp { git stash pop $args }
function gsts { git stash show --text $args }
function gsu { git submodule update $args }
function gts { git tag -s $args }
function gtv { git tag | sort -V $args }
function gunignore { git update-index --no-assume-unchanged $args }
function gunwip { git log -n 1 | grep -q -c "\-\-wip\-\-"; git reset HEAD~1 $args }
function gup { git pull --rebase $args }
function gupv { git pull --rebase -v $args }
function gwch { git whatchanged -p --abbrev-commit --pretty=medium $args }
function gwip { git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]" $args }
function howto { cat ~/Documents/WindowsPowerShell/profile.ps1 | grep $args }

. ~/Documents/WindowsPowerShell/profile.local.ps1
