#!/bin/bash

bash ./scripts/setup.sh

export PLAYGROUND="playground"
export HIGHLIGHTJS_RASCRIPT="${PLAYGROUND}/extra/highlightjs-rascript"

rm -rf dist
mkdir -p dist
cd ${PLAYGROUND}
node ./tools/build.js -t cdn
cd ..
cp -r ${HIGHLIGHTJS_RASCRIPT}/dist/*.js dist