export PATH := node_modules/.bin/:$(PATH)
# export NODE_PATH := .:$(NODE_PATH)

SHELL = /bin/bash

all: dev

install:
	@yarn install
	# @cp .wdio-selenium-standalone-service_build_launcher.js node_modules/wdio-selenium-standalone-service/build/launcher.js
	# @selenium-standalone install --drivers.chrome.version=2.27
	# @if [ ! -d node_modules/wdio-selenium-standalone-service/node_modules/selenium-standalone ]; then ln -sf node_modules/selenium-standalone node_modules/wdio-selenium-standalone-service/node_modules; fi

dev:
	@export ENV_NAME='dev' && wdio

dragon:
	@export ENV_NAME='dragon' && wdio

titan:
	@export ENV_NAME='titan' && wdio

prod:
	@export ENV_NAME='prod' && wdio
