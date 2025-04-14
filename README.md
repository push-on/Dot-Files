

## [pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules

```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name CompletionPredictor
```
`Admin Rights required`
```ps1
powercfg.exe /hibernate off
```

```ps1
code (Get-PSReadLineOption | select -ExpandProperty HistorySavePath)
```
## 📦 [scoop](https://scoop.sh/)

```bash
scoop bucket add extras
scoop bucket add versions
scoop install 7zip audacity nomacs bulk-rename-utility everything ffmpeg naps2 obs-studio pureref starship xnconvert extras/okular 
scoop install bun nodejs-lts
scoop install extras/blender-launcher krita godot
```
