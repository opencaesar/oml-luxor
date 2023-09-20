# OML Luxor Extension

[![Build Status](https://app.travis-ci.com/opencaesar/oml-luxor.svg?branch=master)](https://app.travis-ci.com/github/opencaesar/oml-luxor)
[![Release](https://img.shields.io/github/v/release/opencaesar/oml-luxor?label=Download)](https://github.com/opencaesar/oml-luxor/releases/latest)

An extension to support [OML](https://opencaesar.github.io/oml) in VSCode-based IDEs.

## Install OML Luxor in VSCode

Download the `oml-luxor-VERSION.vsix` file from the latest [release](https://github.com/opencaesar/oml-luxor/releases) to your hard disk.

Open VSCode desktop IDE then click on the `Extensions` tab on the right. Drag and drop the vsix file from your hard disk to the tab to install the extension.

Note: if a previous version of the OML Luxor extension was already installed, [uninstall](https://code.visualstudio.com/docs/editor/extension-marketplace#_uninstall-an-extension) it first.

## Install OML Luxor in Gitpod.io

Download the `oml-luxor-VERSION.vsix` file from the latest [release](https://github.com/opencaesar/oml-luxor/releases) to your hard disk.

Launch your repo with [gitoid.io](https://www.gitpod.io/) then open the `Extension` tab on the right. Drag and drop the vsix file from your hard disk to the tab to install the extension.

Note: Alternatively, you can install the latest published version from the [VSX registry](https://open-vsx.org/extension/openCAESAR/oml-luxor) by searching for "OML Luxor" in the extension tab's search box then click on it to install it.

Note: if a previous version of the extension was already installed, [uninstall](https://code.visualstudio.com/docs/editor/extension-marketplace#_uninstall-an-extension) it first.

> Follow the steps below only if you intend to build the OML Extension from source.
 
## Prepare Build Environment
If you like to build OML Luxor extension from source, make sure you have the right build environment first.

Install [nvm](https://github.com/creationix/nvm#install-script).

```shell
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
```

Install `npm` and `node`.

```shell
  nvm install 12
  nvm use 12
```

Install `yarn`
```shell
  npm install -g yarn
  
```

Install `vsce` if you plan to package the extesnion
```shell
  npm install -g vsce
  
```

## Clone
```shell
  git clone --recurse-submodules https://github.com/opencaesar/oml-luxor.git
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
