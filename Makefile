SHELL := /bin/bash
.PHONY: test

test:
	bash ./scripts/test.sh

gen:
	bash ./scripts/gen.sh

upgrade:
	bash ./scripts/upgrade.sh

clean:
	rm -rf plyground
	rm rascript-upstream.js

run: gen
	echo "Starting at http://localhost:8000"
	python -m SimpleHTTPServer # Python2.7
	# python -m http.server 8000 # Python 3

tag-patch:
	bash scripts/update.sh --patch

tag-minor:
	bash scripts/update.sh --minor

tag-major:
	bash scripts/update.sh --major