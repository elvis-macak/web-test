export PATH := node_modules/.bin/:$(PATH)

SHELL = /bin/bash


all: prod

install:
	@yarn install

.PHONY: test
test:
	@wdio

# aliases
dev:
	@export ENV_NAME='dev' && wdio

dragon:
	@export ENV_NAME='dragon' && wdio

titan:
	@export ENV_NAME='titan' && wdio

prod:
	@export ENV_NAME='prod' && wdio
