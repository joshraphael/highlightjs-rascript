#!/bin/bash

bash ./scripts/setup.sh

export PLAYGROUND="playground"
export HIGHLIGHTJS_RASCRIPT="${PLAYGROUND}/extra/highlightjs-rascript"

diff -q "src/languages/rascript.js" "rascript-upstream.js"
if [ $? -ne 0 ]; then
    exit 1
fi

cd ${PLAYGROUND}
npm run build_and_test
if [ $? -ne 0 ]; then
    exit 1
fi
cd ..
diff -q "dist/rascript.min.js" "${HIGHLIGHTJS_RASCRIPT}/dist/rascript.min.js"
if [ $? -ne 0 ]; then
    exit 1
fi
diff -q "dist/rascript.es.min.js" "${HIGHLIGHTJS_RASCRIPT}/dist/rascript.es.min.js"
if [ $? -ne 0 ]; then
    exit 1
fi