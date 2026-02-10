.PHONY: venv install test build publish clean

VENV ?= .venv

venv:
	python3 -m venv $(VENV)

install: venv
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r requirements.txt
	$(VENV)/bin/pip install build twine

test:
	$(VENV)/bin/pytest -q

build:
	$(VENV)/bin/python -m build

publish:
	# Requires ~/.pypirc configured with [nexus] repository
	$(VENV)/bin/python -m twine upload --repository nexus dist/*

clean:
	rm -rf dist build *.egg-info
