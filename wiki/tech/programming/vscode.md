---
layout: default
category: Programming
slug: my-visual-studio-code-vscode-extensions
title: "My Visual Studio Code (VScode) Extensions"
---

The IDE/Editor I use for my daily programming is Visual Studio Code (OSS). 
The OSS in the name means it's binary is not built by Microsoft, which includes telemetry code inside. 
Instead, it was compiled from it's source code and does not include Microsoft tracking. 

Below are the extensions I always use on daily basis. 
There are also some extensions that I only install temporarily, 
especially when I am working on a project with a language that I don't always use.

#### For All Projects

- EditorConfig
- GitLens

#### For All Javascript Projects

- ESLint

#### For Node.js Projects

- DotENV

#### For Vue.js Projects

- Vetur
- Prettier


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

