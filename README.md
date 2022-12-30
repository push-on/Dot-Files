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
npm i -g nodemon
npm i -g typescript
npm i -g eslint
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
winget install Facebook.Messenger
winget install Discord.Discord
```
## [Scoop](https://scoop.sh/)
```ps1
scoop bucket add extras
scoop bucket add main
scoop bucket add versions

scoop install 7zip
scoop install blender
scoop install deno
scoop install everything
scoop install ffmpeg
scoop install godot-beta
scoop install helix
scoop install imageglass
scoop install lf
scoop install llvm
scoop install naps2
scoop install neovide
scoop install neovim
scoop install nilesoft-shell
scoop install notepadplusplus
scoop install nvim
scoop install obs-studio
scoop install obsidian
scoop install oh-my-posh
scoop install posh-docker
scoop install powertoys
scoop install qbittorrent
scoop install scoop-completion
scoop install stylua
scoop install windows-terminal
scoop install winfetch
scoop install xnconvert

scoop list
scoop status
scoop update
scoop update *
```

## remove Edge
```ps1
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/AveYo/fox/main/Edge_Removal.bat'))
```

## Neovim Dependencies
```bash
npm i -g neovim
npm i -g prettier
npm i -g bash-language-server
npm i -g dockerfile-language-server-nodejs
npm i -g vscode-langservers-extracted
npm i -g typescript-language-server
npm i -g tree-sitter-cli
npm i -g svelte-language-server
```