## [Pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#msi) Modules
```ps1
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -Force
```
## [Nilesoft.Shell](https://github.com/moudey/Shell) 
**`custom context menu for win 11`**
```bash
winget install Nilesoft.Shell
```

## [Alacritty](https://alacritty.org/) win config location
```bash
C:\Users\zero\AppData\Roaming\alacritty\alacritty.yml
```
## [Scoop]
```bash
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop bucket add main
scoop bucket add versions
scoop install googlechrome git python nodejs-lts oraclejdk-lts deno llvm clangd make stylua windows-terminal vscode neovim winfetch qbittorrent blender nilesoft-shell godot sumatrapdf
```
