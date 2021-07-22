# OML Luxor Extension

[![Build Status](https://travis-ci.com/opencaesar/oml-luxor.svg?branch=master)](https://travis-ci.com/opencaesar/oml-luxor)
[![Release](https://img.shields.io/github/v/release/opencaesar/oml-luxor?label=Download)](https://github.com/opencaesar/oml-luxor/releases/latest)

An extension to support [OML](https://opencaesar.github.io/oml) in VSCode-based IDEs.

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
  git clone --recursive https://github.com/opencaesar/oml-luxor.git
  cd oml-luxor
```
      
## Build
```shell
./build.sh
```
This will create a file, `extension/oml-luxor-<version>.vsix`.

## Clean
```shell
./clean.sh
```

## Install in VSCode

Open the Extensions area of the VSCode desktop IDE and drag and drop the vsix file to install it.

Note: You can drop the vsix you built locally, or the one you downloaded from a published [release](https://github.com/opencaesar/oml-luxor/releases).

Note: if a previous version of the extension was already installed, uninstall it first.

## Install in Gitpod.io

Launch your repo with [gitoid.io](https://www.gitpod.io/), then open the Extension area to drag and drop the vsix file to install it.

Note: you can drop the visix you built locally, or you can install the latest published version from the [VSX registry](https://open-vsx.org/extension/openCAESAR/oml-luxor) by searching for "OML Luxor" in the extension tab's search box then click on it to install it.

Note: if a previous version of the extension was already installed, uninstall it first.

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
## OML Version
| Luxor   | OML   |
|---------|-------|
| 0.9.2   | 0.9.2 |
| 0.9.1   | 0.9.1 |
| 0.9.0   | 0.9.0 |
| 0.8.3   | 0.8.8 |
| 0.8.2   | 0.8.1 |
| 0.8.1   | 0.8.1 |
