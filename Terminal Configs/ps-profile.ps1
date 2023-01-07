oh-my-posh init pwsh --config "D:\Apps\Configs\win.omp.json" | Invoke-Expression
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
Set-Alias -name pn -value pnpm

function Get-WebContent {
    param([string]$Uri)
    return (Invoke-WebRequest -Uri $Uri).Content
}

Set-Alias -name fwc -value Get-WebContent

# Import-Module -Name Terminal-Icons
