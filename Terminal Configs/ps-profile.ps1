Invoke-Expression (&starship init powershell)
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Import-Module CompletionPredictor
Set-PSReadLineOption -PredictionViewStyle list
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
  InlinePrediction   = '#E5C07B'
}

function showList {
  Get-ChildItem | Format-Wide
}

function addCommit {
  git add .
  git commit -m "Update $(Get-Date)"
}

function addCommitPush {
  addCommit
  git push
}

Set-Alias add_commit_push addCommitPush
Set-Alias add_commit addCommit
Set-Alias la showList
Set-Alias -name pn -value pnpm
