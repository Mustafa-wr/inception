
FROM debian:bullseye

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	rm -rf /var/lib/apt/lists/*

ENV CERTIFICATE /etc/ssl/certs/nginx.crt
ENV KEY /etc/ssl/private/nginx.key

COPY ./conf/default.conf /tmp/default.conf

RUN sed -i "s|cert_placeholder|$CERTIFICATE|g" /tmp/default.conf
RUN sed -i "s|the_key|$KEY|g" /tmp/default.conf

RUN cp /tmp/default.conf /etc/nginx/sites-available/default

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mradwan.42.fr"

CMD ["nginx", "-g", "daemon off;"]
# CMD ["sleep", "infinity"]




