SHELL=/bin/bash

build:
	npm run build:all

dev: buildThirdparty
	npm run build:dev

buildThirdparty: prepare
	cd thirdparty/bergamot && make buildWorker

prepare:
	npm install