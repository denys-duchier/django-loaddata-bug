#! /bin/bash
rm -f db.sqlite3
./manage.py migrate
./manage.py shell <<EOF
from person.models import Person
x=Person(username="too", label="abc")
x.save()
EOF
./manage.py dumpdata --natural-foreign --natural-primary auth.user auth.group person.person -o person.json
