.PHONY: test
test: install
	cd test; make
install:
	bundle install

