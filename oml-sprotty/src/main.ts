import "reflect-metadata";
import "sprotty-vscode-webview/css/sprotty-vscode.css";

import { Container } from "inversify";
import { configureModelElement } from "sprotty";
import { SprottyDiagramIdentifier } from "sprotty-vscode-webview";
import { SprottyLspEditStarter } from "sprotty-vscode-webview/lib/lsp/editing";
import createOmlDiagramContainer from "./di.config";
import { PaletteButtonView } from "./html-views";
import { PaletteButton } from "sprotty-vscode-webview/lib/lsp/editing";

export class OmlSprottyStarter extends SprottyLspEditStarter {
  createContainer(diagramIdentifier: SprottyDiagramIdentifier) {
    return createOmlDiagramContainer(diagramIdentifier.clientId);
  }

  protected addVscodeBindings(
    container: Container,
    diagramIdentifier: SprottyDiagramIdentifier
  ): void {
    super.addVscodeBindings(container, diagramIdentifier);
    configureModelElement(
      container,
      "button:create",
      PaletteButton,
      PaletteButtonView
    );
  }
}

new OmlSprottyStarter();
