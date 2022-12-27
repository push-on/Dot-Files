## [Pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules
```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module -Name PSReadLine -Force
```
## [npm](https://www.npmjs.com/) [pnpm](https://pnpm.io/) packages
```bash
# list installed Packages
npm list -g --depth=0

# uninsatall pagages
npm remove -g packageName

# Apps
npm i -g npm@latest
npm i -g pnpm
npm i -g typescript
npm i -g ts-node
npm i -g nodemon
```
```ps1
# Admin Rights required
powercfg.exe /hibernate off
```
## [Winget](https://winget.run/) Apps
```ps1
# Admin Rights required
Install-Script winfetch
irm https://deno.land/install.ps1 | iex

# winget apps
winget install twinkletray
winget install Nilesoft.Shell
winget install Cyanfish.NAPS2
winget install XnSoft.XnConvert
winget install voidtools.Everything
winget install DuongDieuPhap.ImageGlass
winget install Facebook.Messenger
winget install Discord.Discord
winget install qBittorrent.qBittorrent
winget install OBSProject.OBSStudio
winget install Microsoft.PowerToys

# winget dev tools
winget install Microsoft.PowerShell
winget install github.cli
```

## Scoop
```ps1
# install scoop
irm get.scoop.sh | iex
# Extra Repos
scoop bucket add extras
scoop bucket add versions
# scoop devtools
scoop install 7zip
scoop install mingw
scoop install python
scoop install nodejs
scoop install llvm
scoop install helix
scoop install lf
scoop install lazygit
scoop install rust-msvc
scoop install rust-analyzer
scoop install cmake
# Apps
scoop install godot-beta
```

## remove Edge
```ps1
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/AveYo/fox/main/Edge_Removal.bat'))
```
