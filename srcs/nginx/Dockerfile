# FROM debian:bullseye

# RUN apt-get update && apt-get upgrade && apt install nginx -y \
# 	&& apt upgrade openssl 

# WORKDIR /Users/mradwan/Desktop/inception

# COPY . .



# # Use a Debian-based image as the base
# FROM debian:bullseye-slim

# # Install Nginx and other required tools
# RUN apt-get update && \
#     apt-get install -y nginx && apt-get upgrade openssl\
#     # rm -rf /var/lib/apt/lists/*

# RUN openssl x509 -req -days 365 -in certificate.csr -signkey private_key.key -out self_signed_certificate.crt


# # Copy a custom Nginx configuration file with TLS 1.3 support
# # COPY nginx.conf /etc/nginx/nginx.conf

# # Copy your SSL certificate and key files
# # COPY ssl_cert.crt /etc/nginx/ssl_cert.crt
# # COPY ssl_key.key /etc/nginx/ssl_key.key

# # Expose HTTP and HTTPS ports
# EXPOSE 80
# EXPOSE 443

# # Start Nginx
# CMD ["nginx", "-g", "daemon off;"]


# Use a Debian-based image as the base
FROM debian:bullseye

# Install Nginx and OpenSSL
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# # Generate a private key and a self-signed certificate
RUN openssl genpkey -algorithm RSA -out /etc/nginx/private_key.key && \
    openssl req -new -key /etc/nginx/private_key.key -out /etc/nginx/certificate.csr -subj "/CN=localhost" && \
    openssl x509 -req -days 365 -in /etc/nginx/certificate.csr -signkey /etc/nginx/private_key.key -out /etc/nginx/self_signed_certificate.crt

# RUN	echo hello world > /var/www/html/index.html && echo hi hi hi
	

# Expose HTTP and HTTPS ports

EXPOSE 443
# EXPOSE 80

COPY conf/default.conf /etc/nginx/sites-available/default

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]


