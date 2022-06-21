VENV = venv
PYTHON = $(VENV)/Scripts/python
PIP = $(VENV)/Scripts/pip

run: $(VENV)/Scripts/activate
	$(PYTHON) app.py


$(VENV)/Scripts/activate: requirements.txt
	python -m venv $(VENV)
	$(PIP) install -r requirements.txt


clean:
	rm -rf __pycache__
	rm -rf $(VENV)
