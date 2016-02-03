#!/bin/bash
/usr/local/bin/uwsgi --socket 0.0.0.0:3031 --wsgi-file app.py --master --processes 4 --stats 0.0.0.0:9191
