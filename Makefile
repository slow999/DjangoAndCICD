run: venv
	. venv/bin/activate && python manage.py runserver

venv: requirements.txt
	python3.8 -m venv venv
	. venv/bin/activate && pip install --upgrade pip && \
	pip install -r requirements.txt

clean-all:
	rm -rf venv