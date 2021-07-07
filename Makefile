.PHONY: update
update:
	cp Formula/* $(shell brew --repo karlvr/tools)/Formula
