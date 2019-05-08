dev : artifact smoke install

.PHONY: artifact
artifact:
	rake build

.PHONY: install
install:
	rake install

.PHONY: smoke
smoke:
	rake test
