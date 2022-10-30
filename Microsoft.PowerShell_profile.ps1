oh-my-posh init pwsh --config "C:\Users\main\AppData\Local\Programs\oh-my-posh\themes\win.omp.json" | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{
  Default            = 'Green'
  Command            = 'Magenta'
  Comment            = 'DarkGray'
  ContinuationPrompt = 'Red'
  Error              = 'DarkRed'
  keyword            = 'Red'
  String             = 'Yellow'
  Number             = 'Red'
  Member             = 'Red'
  Operator           = 'Red'
  Type               = 'Red'
  Parameter          = 'Cyan'
  Variable           = 'Blue'
}
Import-Module -Name Terminal-Icons
function showList {
  Get-ChildItem | Format-Wide
}
function pnpmrun {
  pnpm run dev
}
function lazygit {
  git add .
  git commit -m "commit"
  git push
}
Set-Alias la showList
Set-Alias srd pnpmrun
Set-Alias acp lazygit
set-alias -name pn -value pnpm
