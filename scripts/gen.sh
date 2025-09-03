#!/bin/bash

bash ./scripts/setup.sh

export PLAYGROUND="playground"
export HIGHLIGHTJS_RASCRIPT="${PLAYGROUND}/extra/highlightjs-rascript"

cp rascript-upstream.js src/languages/rascript.js

rm -rf dist
mkdir -p dist
cd ${PLAYGROUND}
node ./tools/build.js -t cdn
cd ..
cp -r ${HIGHLIGHTJS_RASCRIPT}/dist/*.js dist