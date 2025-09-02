#!/bin/bash

export PLAYGROUND="playground"
export HIGHLIGHTJS_RASCRIPT="${PLAYGROUND}/extra/highlightjs-rascript"

rm -rf ${PLAYGROUND}
mkdir -p ${PLAYGROUND}
git clone https://github.com/highlightjs/highlight.js ${PLAYGROUND}
mkdir -p ${HIGHLIGHTJS_RASCRIPT}
cp -r src ${HIGHLIGHTJS_RASCRIPT}
cp -r test ${HIGHLIGHTJS_RASCRIPT}
cd ${PLAYGROUND}
npm ci
# node ./tools/build.js -t node
npm run build_and_test
# npm i
# npm run build
# npm run test
# cp ../../src/rascript.js src/languages
# node  --stack-size=65500  ./tools/build.js -t cdn