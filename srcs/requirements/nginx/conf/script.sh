#! /bin/bash

sed -i "s|cert_placeholder|$CERTIFICATE|g" /tmp/default.conf
sed -i "s|the_key|$KEY|g" /tmp/default.conf
cp /tmp/default.conf /etc/nginx/sites-available/default
openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mradwan.42.fr"

nginx -g 'daemon off;'