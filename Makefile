SHELL := /bin/bash
.PHONY: test

run:
	echo "Starting at http://localhost:8000"
	python -m SimpleHTTPServer # Python2.7
	# python -m http.server 8000 # Python 3

test:
	bash ./scripts/test.sh

gen:
	bash ./scripts/gen.sh