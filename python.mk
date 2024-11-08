# Makefile for Python Project Automation

# Variables
PYTHON=python3
VENV_DIR=venv
REQS=requirements.txt

setup: $(VENV_DIR)/bin/activate

$(VENV_DIR)/bin/activate:
	$(PYTHON) -m venv $(VENV_DIR)
	if [ -f $(REQS) ]; then $(VENV_DIR)/bin/pip install -r $(REQS); fi
	@echo "Python environment setup complete."

clean:
	rm -rf $(VENV_DIR)
	@echo "Cleaned up Python environment"