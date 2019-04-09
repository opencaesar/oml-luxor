# OML VSCode Extension

[![Gitpod - Code Now](https://img.shields.io/badge/Gitpod-code%20now-blue.svg?longCache=true)](https://gitpod.io#https://github.com/opencaesar/oml-vscode)
[![Build Status](https://travis-ci.org/opencaesar/oml-vscode.svg?branch=master)](https://travis-ci.org/opencaesar/oml-vscode)

An extension for the VSCode IDE to support the [OML language server](https://github.com/opencaesar/oml)

## Getting started

Install [nvm](https://github.com/creationix/nvm#install-script).

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

Install npm and node.

    nvm install 8
    nvm use 8

## Clone
```
    git clone https://github.com/opencaesar/oml-vscode.git
```
      
## Build
Requirements: java 8, node 8.x, 
```
    cd oml-vscode
    cd io.opencaesar.oml.vscode
    npm install
    npm run vscode:prepublish
```

## Run
Copy the code to the VSCode extension folder

MacOS/Linux:
```
    cd oml-vscode
    cp -a ./io.opencaesar.oml.vscode ~/.vscode/extensions
```
Windows:
```
    cd oml-vscode
    xcopy ./io.opencaesar.oml.vscode %USERPROFILE%\.vscode\extensions /e /i /h
```

Then (re)start VSCode
