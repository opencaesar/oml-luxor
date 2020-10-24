import {ExtensionContext} from 'vscode'
import {OmlLspVscodeExtension} from "./oml-lsp-extension"
import { SprottyLspVscodeExtension } from 'sprotty-vscode/lib/lsp'

let omlExtension: SprottyLspVscodeExtension

export function activate(context: ExtensionContext) {
    omlExtension = new OmlLspVscodeExtension(context)
}

export function deactivate(): Thenable<void> {
    if (!omlExtension)
        return Promise.resolve(undefined);
    return omlExtension.deactivateLanguageClient();
}