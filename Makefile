SHELL := /usr/bin/env bash
FILENAME := template
.SILENT: build

build:
	echo 'Building...'
	python3 -m py_compile *.pmls &>/dev/null
	mv __pycache__/*.pyc "${FILENAME}".pmlm 2>/dev/null
	rm -rf __pycache__