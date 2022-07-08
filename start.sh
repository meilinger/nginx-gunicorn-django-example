#!/bin/sh

nginx&
pipenv run python3 manage.py migrate
pipenv run gunicorn myapp.wsgi --bind 0:8000