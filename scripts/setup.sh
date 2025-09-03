#!/bin/bash

export PLAYGROUND="playground"
export HIGHLIGHTJS_RASCRIPT="${PLAYGROUND}/extra/highlightjs-rascript"
export RASCRIPT_SYNTAX_VERSION="v0.2.0"

rm -rf ${PLAYGROUND}
mkdir -p ${PLAYGROUND}
git clone https://github.com/highlightjs/highlight.js ${PLAYGROUND}
wget -O rascript-upstream.js "https://github.com/joshraphael/rascript-syntax/releases/download/${RASCRIPT_SYNTAX_VERSION}/rascript.js"
mkdir -p ${HIGHLIGHTJS_RASCRIPT}
cp -r src ${HIGHLIGHTJS_RASCRIPT}
cp -r test ${HIGHLIGHTJS_RASCRIPT}
cd ${PLAYGROUND}
npm ci
node ./tools/build.js -t cdn