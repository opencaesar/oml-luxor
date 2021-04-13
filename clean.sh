#!/bin/bash
find . -name '.DS_Store' -type f -delete
rm -R -f extension/lib
rm -R -f extension/node_modules
rm -R -f extension/pack
rm -f extension/oml-luxor-*.vsix
rm -R -f oml-sprotty/lib
rm -R -f oml-sprotty/node_modules
rm -R -f oml-sprotty/pack
