#!/usr/bin/env bash

set -o errexit #exit on error
unset TESTING

pip install -r requirements.txt

python3 populate_catalog.py
python3 manage.py collectstatic --no-input
python3 manage.py makemigrations
python3 manage.py migrate

python3 manage.py createsu
