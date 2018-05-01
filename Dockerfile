FROM macpaw/internship

# Basic set
ENV APP=/app

RUN apt-get update && apt install -y \
	vim \
	logrotate \
	zip

RUN sed -i 's/wrong.py/main.py/g' uwsgi.ini \
	&& sed -i 's/localhost/localhost internship.macpaw.io/g' /etc/nginx/conf.d/nginx.conf

RUN cp /var/tmp/files/guide/hidden/42/08/72/FixelHoover $APP

# Python
COPY main.py $APP

COPY public_ip.py $APP

RUN chmod +x public_ip.py

# Logrotate
COPY logrotate/* /etc/logrotate.d/

RUN chmod 644 /etc/logrotate.d/*

EXPOSE 80
