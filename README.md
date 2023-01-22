## [pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules

```ps1
# script permission 
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# powershell extenitons
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module -Name PSReadLine -Force

# system imfo cli script
Install-Script winfetch
```

## [npm](https://www.npmjs.com/) [pnpm](https://pnpm.io/) packages

```bash
# list installed Packages
npm list -g --depth=0
# uninsatall pagages
npm remove -g packageName
# global dependencys
npm i -g npm@latest
npm i -g pnpm
npm i -g nodemon
npm i -g typescript
npm i -g eslint

# Dev dependency 
# front end
pnpm i @material-tailwind/react

# backend
pn i axios
pn i cors
pn i mongoose
pn i morgan
```

```ps1
# Admin Rights required
powercfg.exe /hibernate off
```

## [scoop](https://scoop.sh/)

```ps1
# install Scoop
irm get.scoop.sh | iex

# add repo
scoop bucket add extras
scoop bucket add main
scoop bucket add versions
scoop bucket add java

# dev dependency
scoop install 7zip
scoop install ffmpeg
scoop install stylua
scoop install mingw
scoop install llvm
scoop install clangd
scoop install nodejs-lts
scoop install git
scoop install anaconda3
scoop install microsoft-jdk

# cli Tools
scoop install lf
scoop install deno
scoop install neovide
scoop install neovim
scoop install helix

# desktop apps
scoop install blender
scoop install everything
scoop install godot-beta
scoop install imageglass
scoop install naps2
scoop install nilesoft-shell
scoop install notepadplusplus
scoop install obs-studio
scoop install obsidian
scoop install oh-my-posh
scoop install powertoys
scoop install qbittorrent
scoop install xnconvert
scoop install twinkle-tray
scoop install zoom

# commands
scoop list
scoop status
scoop update
scoop update *
```

## [nvim](https://vimhelp.org/) dependencies

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

## python packages (pip)
```python
pip install matplotlib
pip install pandas
pip install pipenv
pip install jupyter
pip install numpy

# webdev
pip install django

# linter & intelisence
pip install black
pip install autopep8
pip install jedi

# neovim dependencies
pip install pipwin
pip install pynvim
pip install python-lsp-server
```