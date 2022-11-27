## [Pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules
```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -Force
```

## [Winget](https://winget.run/) Apps
```ps1
# Admin Rights required
Install-Script winfetch

# winget apps
winget install twinkletray
winget install Nilesoft.Shell
winget install Microsoft.PowerShell
winget install Cyanfish.NAPS2
winget install XnSoft.XnConvert
winget install voidtools.Everything
winget install llvm.llvm
winget install Kitware.CMake
winget install github.cli
winget install 7zip.7zip
winget install DuongDieuPhap.ImageGlass
winget install Facebook.Messenger
winget install Discord.Discord
winget install qBittorrent.qBittorrent
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


