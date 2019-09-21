'use strict';

import * as path from 'path';
import * as cp from 'child_process';
import * as os from 'os';
import * as fs from 'fs';
import {
    workspace,
    commands,
    Disposable,
    Uri,
    ExtensionContext
} from 'vscode';
import {
    LanguageClient,
    LanguageClientOptions,
    SettingMonitor,
    ServerOptions,
    TransportKind,
    Position as LSPosition, Location as LSLocation
} from 'vscode-languageclient';

export function activate(context: ExtensionContext) {

    const folder = context.asAbsolutePath(path.join('build'));
    const files = fs.readdirSync(folder).filter(el => el.startsWith("oml-server"));
    const jar = path.resolve(folder + '/' + files[0])

    // If the extension is launched in debug mode then the debug server options are used
    // Otherwise the run options are used
    let serverOptions: ServerOptions = {
        run: {
            command: 'java',
            args: ['-jar', jar]
        },
        debug: {
            command: 'java',
            args: ['-jar', jar, '-Xdebug', '-Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n,quiet=y', '-Xmx256m']
        }
    }

    // Options to control the language client
    let clientOptions: LanguageClientOptions = {
        // Register the server for plain text documents
        documentSelector: ['oml'],
        synchronize: {
            // Synchronize the setting section 'omlLanguageServer' to the server
            configurationSection: 'omlLanguageServer',
            // Notify the server about file changes to '.oml files contain in the workspace
            fileEvents: workspace.createFileSystemWatcher('**/*.oml')
        }
    }

    // Create the language client and start the client.
    let languageClient = new LanguageClient('omlLanguageServer', 'Oml Language Server', serverOptions, clientOptions);
    let disposable = languageClient.start()

    commands.registerCommand('oml.show.references', (uri: string, position: LSPosition, locations: LSLocation[]) => {
        commands.executeCommand('editor.action.showReferences',
                    Uri.parse(uri),
                    languageClient.protocol2CodeConverter.asPosition(position),
                    locations.map(languageClient.protocol2CodeConverter.asLocation));
    })

    commands.registerCommand('oml.apply.workspaceEdit', (obj) => {
        let edit = languageClient.protocol2CodeConverter.asWorkspaceEdit(obj);
        if (edit) {
            workspace.applyEdit(edit);
        }
    });

    // Push the disposable to the context's subscriptions so that the 
    // client can be deactivated on extension deactivation
    context.subscriptions.push(disposable);
}