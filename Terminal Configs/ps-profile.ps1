oh-my-posh init pwsh --config "C:\Users\zero\AppData\Local\Programs\oh-my-posh\themes\win.omp.json" | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{
  Default            = '#98C379'
  Command            = '#61AFEF'
  Comment            = '#abb2bf'
  ContinuationPrompt = '#56B6C2'
  Error              = '#E06C75'
  keyword            = '#C678DD'
  String             = '#e6a26f'
  Number             = '#E5C07B'
  Member             = '#56B6C2'
  Operator           = '#C678DD'
  Type               = '#98C379'
  Parameter          = '#e6a26f'
  Variable           = '#E06C75'
  Emphasis           = '#98C379'
}
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
# Import-Module -Name Terminal-Icons
# Import-Module posh-docker

function showList {
  Get-ChildItem | Format-Wide
}
function acp {
  git add .
  git commit -m "Update $(Get-Date)"
  git push
}
function lazygit {
  git add .
  git commit -m "Update $(Get-Date)"
}
Set-Alias la showList
Set-Alias add_commit_push acp
Set-Alias add_commit lazygit
set-alias -name pn -value pnpm