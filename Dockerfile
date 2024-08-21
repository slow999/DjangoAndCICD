FROM python:3.8-alpine
WORKDIR /code

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY mysite/ mysite/
COPY polls/ polls/
COPY static/ static/
COPY manage.py manage.py
