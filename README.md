

## [pwsh](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget) Modules

```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Script winfetch
Install-Module -Name CompletionPredictor
Install-Module PSReadLine -Force
```
```ps1
# Admin Rights required
powercfg.exe /hibernate off
```

## [npm](https://www.npmjs.com/) [pnpm](https://pnpm.io/) packages

```bash
npm i -g npm@latest pnpm nodemon ts-node typescript eslint @sanity/cli neovim prettier bash-language-server dockerfile-language-server-nodejs vscode-langservers-extracted typescript-language-server tree-sitter-cli svelte-language-server
```
```python
pip install matplotlib pandas pipenv jupyter numpy django black autopep8 jedi pynvim python-lsp-server scikit-learn
```

## [scoop](https://scoop.sh/)

```ps1
# install Scoop
irm get.scoop.sh | iex
# add repo
scoop bucket add extras versions
# desktop apps
scoop install 7zip starship blender godot go obs-studio imageglass naps2 xnconvert twinkle-tray everything bulk-rename-utility
```
