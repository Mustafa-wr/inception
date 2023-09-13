FROM debian:bullseye

ARG CERTIFICATE=${CERTIFICATE}
ARG KEY=${KEY}

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	rm -rf /var/lib/apt/lists/*

COPY ./conf/default.conf /tmp/default.conf

COPY ./conf/script.sh /

CMD ["bash", "/script.sh"]





