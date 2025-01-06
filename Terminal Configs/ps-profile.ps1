Invoke-Expression (&starship init powershell)

# Function to ensure module is installed and imported
function Install-ModuleIfNotPresent {
    param (
        [string]$ModuleName,
        [switch]$AllowPrerelease
    )
    
    if (!(Get-Module -ListAvailable -Name $ModuleName)) {
        Write-Host "Installing module: $ModuleName..."
        Install-Module -Name $ModuleName -Force -AllowPrerelease:$AllowPrerelease -Scope CurrentUser
    }
    Import-Module $ModuleName
}

# Install and import required modules
Install-ModuleIfNotPresent -ModuleName PSReadLine -AllowPrerelease
Install-ModuleIfNotPresent -ModuleName CompletionPredictor
Set-PSReadLineOption -HistoryNoDuplicates:$True

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
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



#opt-out of telemetry before doing anything, only if PowerShell is run as admin
if ([bool]([System.Security.Principal.WindowsIdentity]::GetCurrent()).IsSystem) {
    [System.Environment]::SetEnvironmentVariable('POWERSHELL_TELEMETRY_OPTOUT', 'true', [System.EnvironmentVariableTarget]::Machine)
}

# Initial GitHub.com connectivity check with 1 second timeout
$global:canConnectToGitHub = Test-Connection github.com -Count 1 -Quiet -TimeoutSeconds 1

# Ensure Terminal-Icons module is installed before importing
if (-not (Get-Module -ListAvailable -Name Terminal-Icons)) {
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force -SkipPublisherCheck
}
Import-Module -Name Terminal-Icons


# Custom completion for common commands
$scriptblock = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $customCompletions = @{
        'git' = @('status', 'add', 'commit', 'push', 'pull', 'clone', 'checkout')
        'npm' = @('install', 'start', 'run', 'test', 'build')
        'deno' = @('run', 'compile', 'bundle', 'test', 'lint', 'fmt', 'cache', 'info', 'doc', 'upgrade')
    }
    
    $command = $commandAst.CommandElements[0].Value
    if ($customCompletions.ContainsKey($command)) {
        $customCompletions[$command] | Where-Object { $_ -like "$wordToComplete*" } | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
    }
}
Register-ArgumentCompleter -Native -CommandName git, npm, deno -ScriptBlock $scriptblock

# Custom functions for PSReadLine
Set-PSReadLineOption -AddToHistoryHandler {
    param($line)
    $sensitive = @('password', 'secret', 'token', 'apikey', 'connectionstring')
    $hasSensitive = $sensitive | Where-Object { $line -match $_ }
    return ($null -eq $hasSensitive)
}

function Clear-Cache {
    # add clear cache logic here
    Write-Host "Clearing cache..." -ForegroundColor Cyan

    # Clear Windows Prefetch
    Write-Host "Clearing Windows Prefetch..." -ForegroundColor Yellow
    Remove-Item -Path "$env:SystemRoot\Prefetch\*" -Force -ErrorAction SilentlyContinue

    # Clear Windows Temp
    Write-Host "Clearing Windows Temp..." -ForegroundColor Yellow
    Remove-Item -Path "$env:SystemRoot\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

    # Clear User Temp
    Write-Host "Clearing User Temp..." -ForegroundColor Yellow
    Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue

    # Clear Internet Explorer Cache
    Write-Host "Clearing Internet Explorer Cache..." -ForegroundColor Yellow
    Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\INetCache\*" -Recurse -Force -ErrorAction SilentlyContinue

    Write-Host "Cache clearing completed." -ForegroundColor Green
}

Set-Alias add_commit_push addCommitPush
Set-Alias add_commit addCommit
Set-Alias la showList
Set-Alias -name pn -value bun
Set-Alias -name npm -value bun
Set-Alias -name npx -value bunx
Set-Alias -name cc -value Clear-Cache
