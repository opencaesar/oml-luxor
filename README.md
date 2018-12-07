# OML2 - VSCode

[![Gitpod - Code Now](https://img.shields.io/badge/Gitpod-code%20now-blue.svg?longCache=true)](https://gitpod.io#https://github.com/open-caesar/oml2-vscode)
[![Build Status](https://travis-ci.org/open-caesar/oml2-vscode.svg?branch=master)](https://travis-ci.org/open-caesar/oml2-vscode)
[![Open questions](https://img.shields.io/badge/Open-questions-lightgrey.svg?style=flat-curved)](https://github.com/open-caesar/oml2-vscode/labels/question)
[![Open bugs](https://img.shields.io/badge/Open-bugs-red.svg?style=flat-curved)](https://github.com/open-caesar/oml2-vscode/labels/bug)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-yellowgreen.svg?style=flat-curved)](https://github.com/open-caesar/oml2-vscode/labels/help%20wanted)

An extension for the VSCode IDE to support the [OML2 language server](https://github.com/open-caesar/oml2-language-server)

## Getting started

Install [nvm](https://github.com/creationix/nvm#install-script).

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

Install npm and node.

    nvm install 8
    nvm use 8

Clone the code
  
    git clone https://github.com/open-caesar/oml2-vscode.git

Change directory
    
    cd oml2-theia/open.caesar.oml2.vscode.parent/

## Build

Requirements: java 8, node 8.x, 

    npm install
    npm run vscode:prepublish

## Run

Copy the folder 'open.caesar.oml2.vscode.parent' to your local VSCode extensions folder:

    Windows: %USERPROFILE%\.vscode\extensions
    Mac/Linux: ~/.vscode/extensions

Then, relaunch VSCode and open an OML2 file (*.oml2)
