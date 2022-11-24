## [Pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#msi) Modules
```ps1
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -Force
```

## [Scoop](https://scoop.sh/#/) CLI Package Manager
```ps1
# install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
# add repos
scoop bucket add main
scoop bucket add versions
scoop bucket add nerd-fonts
# all apps
scoop install googlechrome git python nodejs-lts oraclejdk-lts deno llvm clangd make stylua windows-terminal vscode neovim winfetch qbittorrent blender nilesoft-shell godot sumatrapdf Cascadia-Code naps2 xnconvert everything
# Scoop Commands
scoop list
scoop status
scoop update 
scoop update *
```



|  | Shortcuts |  |
| --- | --- | --- |
| Chrome | ctrl + L | focus Address bar |

| App name | Sites |
| --- | --- |
| All in one brightness control | winget install twinkletray |
| Context Menu  | winget install Nilesoft.Shell |
| HFS http file transfer | https://www.rejetto.com/hfs/ |
| PDF Scanner | https://www.naps2.com/ |
| raw drive viewer | https://www.osforensics.com/raw-disk-viewer.html |
| Zoom it | https://learn.microsoft.com/en-us/sysinternals/downloads/zoomit |
| Xn Convert | https://www.xnview.com/en/xnconvert/ |
|  |  |
| Github Apps |  |
| REmap keys to Registry | ‣ |
| Spot X | ‣ |
| Folder Icons | ‣ |
|  |  |

## [Nilesoft.Shell](https://github.com/moudey/Shell) Context menu
**`custom context menu for win 11`**
```ps1
winget install Nilesoft.Shell
```

## [Alacritty](https://alacritty.org/) win config location
```ps1
C:\Users\zero\AppData\Roaming\alacritty\alacritty.yml
```
