# Dot file locations
### ___lf___ 
`C:\Users\zero\AppData\Local\lf`
### ___alacritty___
`C:\Users\zero\AppData\Roaming\alacritty`

## ✨ link to [CSS](https://github.com/push-on/Dot-Files/blob/main/CSS/style.css) template

## [pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules

```ps1
# script permission
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# system imfo cli script
Install-Script winfetch
```

```ps1
# Admin Rights required
powercfg.exe /hibernate off
```

## [npm](https://www.npmjs.com/) [pnpm](https://pnpm.io/) packages

```bash
# list installed Packages
npm list -g --depth=0

# uninsatall pagages
npm remove -g packageName

# global dependencys
npm i -g npm@latest pnpm nodemon ts-node typescript eslint @sanity/cli neovim prettier bash-language-server dockerfile-language-server-nodejs vscode-langservers-extracted typescript-language-server tree-sitter-cli svelte-language-server

# Dev dependency
# front end
pnpm i @material-tailwind/react

# backend
pn i axios
pn i cors
pn i mongoose
pn i morgan
```

## python packages (pip)

```python
py -m pip install matplotlib pandas pipenv jupyter numpy django black autopep8 jedi pynvim python-lsp-server scikit-learn
```

## [scoop](https://scoop.sh/)

```ps1
# install Scoop
irm get.scoop.sh | iex

# add repo
scoop bucket add extras
scoop bucket add main
scoop bucket add versions

# dev dependency
scoop install 7zip ffmpeg mingw llvm clangd deno starship stylua

# desktop apps
scoop install blender krita obs-studio godot imageglass naps2 obsidian xnconvert twinkle-tray everything bulk-rename-utility mp3tag

# commands
scoop list
scoop status
scoop update
scoop update *
```

## [Astro Nvim]

```ps1
scoop install neovim neovide
git clone --depth 1 https://github.com/AstroNvim/AstroNvim $env:LOCALAPPDATA\nvim
git clone https://github.com/push-on/astro.git $env:LOCALAPPDATA\nvim\lua\user
```
