

## [pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules

```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name CompletionPredictor
```
`Admin Rights required`
```ps1
powercfg.exe /hibernate off
```

## 📦 [npm](https://www.npmjs.com/) Packages

```bash
npm i -g npm@latest pnpm nodemon ts-node typescript eslint @sanity/cli neovim prettier bash-language-server dockerfile-language-server-nodejs vscode-langservers-extracted typescript-language-server tree-sitter-cli svelte-language-server
```
## 📦 [pip](https://pypi.org/) Packages
```bash
pip install matplotlib pandas pipenv jupyter numpy django black autopep8 jedi pynvim python-lsp-server scikit-learn seaborn requests pillow gdtoolkit
```

## 📦 [scoop](https://scoop.sh/)

```bash
scoop bucket add extras
scoop bucket add versions
scoop install 7zip audacity bulk-rename-utility bun everything ffmpeg naps2 obs-studio pureref starship xnconvert 
```

## Bashrc
```bash
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias apt='\nala'
alias dapt='\apt'
alias sudo='sudo '
```
## Ubuntu Essentials
```bash
sudo apt install -y build-essential python3-pip fzf unzip python3.10-venv
```

## ⚙ Alacritty
`open Alacritty in current directory parameter for windows`
```bash
--working-directory %V
```

