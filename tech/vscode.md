# Visual Studio Code

- App: Code-OSS
- `ln -s /usr/bin/code-oss /usr/bin/code`
- Installed Extensions: vetur,eslint,editorcnfig,dotenv,prettier
- Disabled extensions: all themes except default

## Shortcuts

- Open settings: ctrl + ,
- Fold/Unfold code block: Ctrl + Shift + [ or Ctrl + Shift + ]
- Show/Focus Explorer: Ctrl + Shift + E


## In bashrc

```sh
export VISUAL=code
export ELECTRON_TRASH=gio
export DOTNET_CLI_TELEMETRY_OPTOUT=1
```

## User Settings

```json
{
    "workbench.tips.enabled": false,
    "explorer.openEditors.visible": 0,
    "explorer.confirmDelete": false,
    "git.autofetch": true,
    "workbench.startupEditor": "newUntitledFile",
    "window.zoomLevel": 1,
    "javascript.updateImportsOnFileMove.enabled": "always",
    "editor.minimap.enabled": false,
    "eslint.validate": [
        { "language": "vue", "autoFix": true },
        { "language": "html", "autoFix": true },
        { "language": "javascript", "autoFix": true }
      ],
      "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      },
      "[html]": {
        "editor.defaultFormatter": "vscode.html-language-features"
      },
      "explorer.confirmDragAndDrop": false,
      "aws.telemetry": false,
      "aws.profile": "default"
}
```
