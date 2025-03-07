.PHONY: test build upload clean

all:
	@echo "usage: make [test | build | upload | clean]"

test:
	nosetests -v --nologcapture

build:
	python3 -m pip install --upgrade build
	python3 -m build

upload:
	python3 -m twine upload dist/*

clean:
	rm dist/*
