/*
 * Copyright (c) 2020 Jet Propulsion Laboratory, California Institute of Technology
 */
import * as path from "path";
import * as vscode from "vscode";
import * as fs from "fs";
import * as net from "net";

import {
  LanguageClient,
  LanguageClientOptions,
  Location as LSLocation,
  Position as LSPosition,
  ServerOptions,
  StreamInfo,
} from "vscode-languageclient";
import {
  LspLabelEditActionHandler,
  SprottyLspEditVscodeExtension,
  WorkspaceEditActionHandler,
} from "sprotty-vscode/lib/lsp/editing";
import {
  SprottyDiagramIdentifier,
  SprottyLspWebview,
} from "sprotty-vscode/lib/lsp";
import { SprottyWebview } from "sprotty-vscode/lib/sprotty-webview";

export class OmlLspVscodeExtension extends SprottyLspEditVscodeExtension {
  constructor(context: vscode.ExtensionContext) {
    super("oml", context);
  }

  protected getDiagramType(commandArgs: any[]): string | undefined {
    if (
      commandArgs.length === 0 ||
      (commandArgs[0] instanceof vscode.Uri &&
        commandArgs[0].path.endsWith(".oml"))
    ) {
      return "oml-diagram";
    }
  }

  createWebView(identifier: SprottyDiagramIdentifier): SprottyWebview {
    const webview = new SprottyLspWebview({
      extension: this,
      identifier,
      localResourceRoots: [this.getExtensionFileUri("pack")],
      scriptUri: this.getExtensionFileUri("pack", "webview.js"),
      singleton: false, // Change this to `true` to enable a singleton view
    });
    webview.addActionHandler(WorkspaceEditActionHandler);
    webview.addActionHandler(LspLabelEditActionHandler);
    return webview;
  }

  protected activateLanguageClient(
    context: vscode.ExtensionContext
  ): LanguageClient {
    const clientOptions: LanguageClientOptions = {
      documentSelector: [{ scheme: "file", language: "oml" }],
      synchronize: {
        // Synchronize the setting section 'omlLanguageServer' to the server
        configurationSection: "omlLanguageServer",
        // Notify the server about file changes to '.oml files contain in the workspace
        fileEvents: vscode.workspace.createFileSystemWatcher("**/*.oml"),
      },
    };

    // A failed attempt to try first connecting to a server via a socket and if that fails then connect via an executable.

    // try {
    //   console.log('Trying via socket...');
    //   return this.activateLanguageClientViaSocket(
    //     context,
    //     clientOptions,
    //     OmlLspVscodeExtension.doRegistrations
    //   );
    // } catch (e) {
    //   console.log('Trying via executable...');
    //   return this.activateLanguageClientViaExecutable(
    //     context,
    //     clientOptions,
    //     OmlLspVscodeExtension.doRegistrations
    //   );
    // }

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
  }

  protected static doRegistrations(languageClient: LanguageClient): void {
    vscode.commands.registerCommand(
      "oml.show.references",
      (uri: string, position: LSPosition, locations: LSLocation[]) => {
        vscode.commands.executeCommand(
          "editor.action.showReferences",
          vscode.Uri.parse(uri),
          languageClient.protocol2CodeConverter.asPosition(position),
          locations.map(languageClient.protocol2CodeConverter.asLocation)
        );
      }
    );

    vscode.commands.registerCommand("oml.apply.workspaceEdit", (obj) => {
      const edit = languageClient.protocol2CodeConverter.asWorkspaceEdit(obj);
      if (edit) {
        vscode.workspace.applyEdit(edit);
      }
    });
  }

  protected activateLanguageClientViaSocket(
    context: vscode.ExtensionContext,
    clientOptions: LanguageClientOptions,
    registrations: (languageClient: LanguageClient) => void
  ): LanguageClient {
    const connectionInfo = {
      // org.eclipse.sprotty.xtext.launch.DiagramServerSocketLauncher.DEFAULT_PORT
      port: 5008,
    };

    const serverOptions: ServerOptions = () => {
      const socket = net.connect(connectionInfo);
      const result: StreamInfo = {
        writer: socket,
        reader: socket,
      };
      return Promise.resolve(result);
    };

    const languageClient = new LanguageClient(
      "omlLanguageServer",
      "Oml Language Server",
      serverOptions,
      clientOptions
    );

    registrations(languageClient);

    const disposable = languageClient.start();

    // Is this needed?
    // This is not in the sprotty-vscode example.

    // Push the disposable to the context's subscriptions so that the
    // client can be deactivated on extension deactivation
    context.subscriptions.push(disposable);

    return languageClient;
  }

  protected activateLanguageClientViaExecutable(
    context: vscode.ExtensionContext,
    clientOptions: LanguageClientOptions,
    registrations: (languageClient: LanguageClient) => void
  ): LanguageClient {
    const java = process.platform === "win32" ? "java.exe" : "java";

    const folder = context.asAbsolutePath(path.join("server"));
    const files = fs
      .readdirSync(folder)
      .filter((el) => el.startsWith("oml-server"));
    const jar = path.resolve(folder + "/" + files[0]);

    const serverOptions: ServerOptions = {
      run: {
        command: java,
        args: ["-jar", jar],
      },
      debug: {
        command: java,
        args: [
          "-jar",
          jar,
          "-Xdebug",
          "-Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n,quiet=y",
          "-Xmx1024m",
        ],
      },
    };

    const languageClient = new LanguageClient(
      "omlLanguageServer",
      "Oml Language Server",
      serverOptions,
      clientOptions
    );

    // Not in the sprotty-vscode example.
    // Is this the right place to register commands?
    registrations(languageClient);

    const disposable = languageClient.start();

    // Is this needed?
    // This is not in the sprotty-vscode example.

    // Push the disposable to the context's subscriptions so that the
    // client can be deactivated on extension deactivation
    context.subscriptions.push(disposable);

    return languageClient;
  }
}
