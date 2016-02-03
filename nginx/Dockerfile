FROM nginx

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install inotify-tools supervisor

ADD nginx.conf /etc/nginx/nginx.conf
ADD supervisord.conf /etc/supervisor/supervisord.conf

ADD reloader.sh /root/reloader.sh
RUN chmod +x /root/reloader.sh

RUN mkdir /etc/nginx/upstream/

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
