#! /bin/bash
rm -f db.sqlite3
./manage.py migrate
./manage.py loaddata person
