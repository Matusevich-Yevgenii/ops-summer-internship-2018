FROM macpaw/internship

# Basic set
ENV APP=/app

RUN apt-get update && apt install -y \
	vim \
	logrotate \
	zip \
        moreutils \
	fcrackzip

RUN sed -i 's/wrong.py/main.py/g' uwsgi.ini \
	&& sed -i 's/localhost/localhost internship.macpaw.io/g' /etc/nginx/conf.d/nginx.conf \
	&& head -n -5 /etc/nginx/conf.d/nginx.conf | sponge /etc/nginx/conf.d/nginx.conf

RUN cp /var/tmp/files/guide/hidden/42/08/72/FixelHoover $APP

# Python
COPY main.py $APP

COPY public_ip.py $APP

# HTML
COPY html/index.html /var/www/html/

# Logrotate
COPY logrotate/* /etc/logrotate.d/

RUN chmod 644 /etc/logrotate.d/*

# Unarchive
COPY scripts $APP

RUN ./unarchive.sh

EXPOSE 80
