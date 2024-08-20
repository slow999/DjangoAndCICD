run: venv
	. venv/bin/activate && python manage.py runserver

test: venv
	. venv/bin/activate && coverage run manage.py test && coverage html

venv: requirements.txt
	python3.8 -m venv venv
	. venv/bin/activate && pip install --upgrade pip && \
	pip install -r requirements.txt

clean:
	rm -rf htmlcov/ .coverage

clean-all: clean
	rm -rf venv/