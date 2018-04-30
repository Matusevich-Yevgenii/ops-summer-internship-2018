FROM macpaw/internship

ENV APP=/app

RUN apt install -y vim logrotate zip

RUN sed -i 's/wrong.py/main.py/g' uwsgi.ini \
	&& sed -i 's/localhost/localhost internship.macpaw.io/g' /etc/nginx/conf.d/nginx.conf

RUN cp /var/tmp/files/guide/hidden/42/08/72/FixelHoover $APP

COPY main.py $APP

COPY logrotate/* /etc/logrotate.d/

RUN chmod 644 /etc/logrotate.d/*

EXPOSE 80
