BIN := .bin/
UNMAKE := $(BIN)unmake


.PHONY: unmake
unmake: $(UNMAKE)
	@# unmakeをインストールする
$(UNMAKE):
	mkdir -p $(BIN)
	curl -L https://github.com/TakesxiSximada/unmake/releases/download/2/unmake -o $(UNMAKE)
	chmod +x $(UNMAKE)


.PHONY: help
help:
	@# Display usage.

	@unmake $(MAKEFILE_LIST)
