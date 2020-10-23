import {ExtensionContext} from 'vscode'
import {OmlLspVscodeExtension} from "./lsp-extension"
import { SprottyLspVscodeExtension } from 'sprotty-vscode/lib/lsp'

let extension: SprottyLspVscodeExtension

export function activate(context: ExtensionContext) {
    extension = new OmlLspVscodeExtension(context)
}

export function deactivate(): Thenable<void> {
    if (!extension)
        return Promise.resolve(undefined);
    return extension.deactivateLanguageClient();
}