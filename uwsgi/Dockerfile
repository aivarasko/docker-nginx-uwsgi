FROM python:2

RUN pip install uwsgi

ADD app.py app.py
ADD start.sh start.sh

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
