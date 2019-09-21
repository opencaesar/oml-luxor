# OML VSCode Extension

[![Gitpod - Code Now](https://img.shields.io/badge/Gitpod-code%20now-blue.svg?longCache=true)](https://gitpod.io#https://github.com/opencaesar/oml-vscode)
[![Build Status](https://travis-ci.org/opencaesar/oml-vscode.svg?branch=master)](https://travis-ci.org/opencaesar/oml-vscode)

A VSCode IDE extension to support [OML](https://opencaesar.github.io/oml-spec)

## Getting started

Install [nvm](https://github.com/creationix/nvm#install-script).

```shell
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
```

Install npm and node.

```shell
  nvm install 10
  nvm use 10
```

## Clone
```shell
  git clone https://github.com/opencaesar/oml-vscode.git
  cd oml-vscode
```
      
## Build
Requirements: java 8, node 8.x, 
```shell
  cd oml-vscode && \
  npm install && \
  npm run vscode:prepublish
```

## Run
Copy the code to the VSCode extension folder

MacOS/Linux:
```shell
  cp -a ../oml-vscode ~/.vscode/extensions
```
Windows:
```shell
  xcopy ../oml-vscode %USERPROFILE%\.vscode\extensions /e /i /h
```

Then (re)start VSCode
