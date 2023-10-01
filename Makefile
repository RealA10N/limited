PY := python3
.PHONY: build upload

build:
	$(PY) -m pip install -U build
	$(PY) -m build

upload: build
	$(PY) -m pip install -U twine
	$(PY) -m twine upload dist/*
