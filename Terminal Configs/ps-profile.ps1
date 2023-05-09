Invoke-Expression (&starship init powershell)
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

function addCommit {
  git add .
  git commit -m "Update $(Get-Date)"
}

function addCommitPush {
  addCommit
  git push
}

function nvimgui {
  neovide --multigrid
}


function lf_cd {

$tmp = [System.IO.Path]::GetTempFileName()
lf -last-dir-path="$tmp" $args
if (Test-Path -PathType Leaf "$tmp") {
    $dir = Get-Content "$tmp"
    Remove-Item -Force "$tmp"
    if (Test-Path -PathType Container "$dir") {
        if ("$dir" -ne "$pwd") {
            cd "$dir"
        }
    }
}
}

Set-Alias lfcd lf_cd
Set-Alias add_commit_push addCommitPush
Set-Alias add_commit addCommit
Set-Alias la showList
Set-Alias -name pn -value pnpm
Set-Alias -name fwc -value Get-WebContent