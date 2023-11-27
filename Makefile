FOLDERS := $(wildcard */)

.PHONY: install
install:
	stow --verbose --target=$$HOME --restow */


.PHONY: remove
delete:
	stow --verbose --target=$$HOME --delete */
