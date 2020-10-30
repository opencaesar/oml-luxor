# OML VSCode Extension

[![Build Status](https://travis-ci.org/opencaesar/oml-vscode.svg?branch=master)](https://travis-ci.org/opencaesar/oml-vscode)

A VSCode IDE omlExtension to support [OML](https://opencaesar.github.io/oml-spec)

## Getting started

Install [nvm](https://github.com/creationix/nvm#install-script).

```shell
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
```

Install npm and node.

```shell
  nvm install 12
  nvm use 12
```

Install vsce if you plan to package the extesnion
```shell
  npm install -g vsce
  
```

## Clone
```shell
  git clone https://github.com/opencaesar/oml-vscode.git
  cd oml-vscode
```
      
## Build
Requirements: java 11, node 12.x 
```shell
./build.sh
```
This will create a file, `extension/oml-vscode-<version>.vsix`.

## Install in VSCode

Open the Extensions area of the VSCode desktop IDE and drag and drop the vsix file to install it.

Note: if a previous version of the extension was installed, uninstall it first.

## Install in Gitpod.io

Launch your repo with [gitoid.io](https://www.gitpod.io/), then open the Extensions area of the web IDE and drag and drop the vsix file to install it.

Note: if a previous version of the extension was installed, uninstall it first.

## Debug

See [extension/src/oml-lsp-extension.ts](extension/src/oml-lsp-extension.ts) for:

```typescript
    // For localhost debugging, uncomment the following:

    //   return this.activateLanguageClientViaSocket(
    //     context,
    //     clientOptions,
    //     OmlLspVscodeExtension.doRegistrations
    //   );

    // For localhost debugging, comment the following:
    
    return this.activateLanguageClientViaExecutable(
        context,
        clientOptions,
        OmlLspVscodeExtension.doRegistrations
      );
```

For debugging where the oml-server is started separately via `io.opencaesar.oml.dsl.ide.launch.OmlRunSocketServer`:

```typescript
    // For localhost debugging, uncomment the following:

      return this.activateLanguageClientViaSocket(
        context,
        clientOptions,
        OmlLspVscodeExtension.doRegistrations
      );

    // For localhost debugging, comment the following:
    
    // return this.activateLanguageClientViaExecutable(
    //     context,
    //     clientOptions,
    //     OmlLspVscodeExtension.doRegistrations
    //   );
```