export PATH := node_modules/.bin/:$(PATH)
export NODE_PATH := .:$(NODE_PATH)

SHELL = /bin/bash

all: dev

install:
	@npm install
	@cp .wdio-selenium-standalone-service_build_launcher.js node_modules/wdio-selenium-standalone-service/build/launcher.js  
	@selenium-standalone install --drivers.chrome.version=2.15

dev:
	@export ENV_NAME='dev' && wdio

dragon:
	@export ENV_NAME='dragon' && wdio

titan:
	@export ENV_NAME='titan' && wdio

prod:
	@export ENV_NAME='prod' && wdio
