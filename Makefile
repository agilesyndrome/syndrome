VERSION_FILE := lib/*/version.rb
VERSION := $(shell grep VERSION $(VERSION_FILE) | sed -e 's/VERSION =//' -e 's/[ "]//g')

dev : clean build smoke install

clean:
	rm pkg/*.gem

build:
	rake build

install:
	rake install

smoke:
	rake test


.PHONY: clean build install smoke dev
