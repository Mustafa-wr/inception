# Inception

A system administration project focused on containerizing and orchestrating a complete web application stack using Docker.

## Overview

This project involves setting up a small infrastructure composed of different services using Docker containers. The infrastructure includes:

- NGINX with TLS
- WordPress + php-fpm
- MariaDB
- Docker volumes for persistence
- Custom Docker network

## Prerequisites

- Virtual Machine
- Docker
- Docker Compose
- Make

## Project Structure

```
.
├── Makefile
└── srcs/
    ├── docker-compose.yml
    ├── .env
    └── requirements/
        ├── mariadb/
        │   ├── conf/
        │   ├── tools/
        │   ├── Dockerfile
        ├── nginx/
        │   ├── conf/
        │   ├── tools/
        │   ├── Dockerfile
        ├── wordpress/
        │   ├── conf/
        │   ├── tools/
        └──     Dockerfile
```

## Mandatory Requirements

### Infrastructure
- All services must run in dedicated containers
- Containers must be built using Alpine or Debian (penultimate stable version)
- Custom Dockerfiles for each service
- No pre-built Docker images (except Alpine/Debian base images)
- Containers must auto-restart on crash
- No infinite loops or hacky patches (tail -f, bash, sleep infinity, while true)

### Services Configuration

#### NGINX
- TLSv1.2 or TLSv1.3 only
- Only entrypoint via port 443
- TLS certificate configuration

#### WordPress + php-fpm
- Properly configured php-fpm
- Two users in WordPress database (including admin)
- Admin username restrictions (no admin/Admin/administrator variants)

#### MariaDB
- Persistent database storage
- Secure configuration

### Volumes
- WordPress database volume
- WordPress website files volume

### Networking
- Custom Docker network
- No host network or links
- Domain name configuration (login.42.fr)

### Security
- No passwords in Dockerfiles
- Environment variables usage
- Secure storage of credentials
- Docker secrets for sensitive information

## Bonus Features

1. Redis cache for WordPress
2. FTP server container
3. Static website (non-PHP)
4. Adminer
5. Additional justified service

## Installation

1. Clone the repository
2. Configure environment variables in `srcs/.env`
3. Run:
```bash
make
```

## Usage

### Starting the Services
```bash
make up
```

### Stopping the Services
```bash
make down
```

### Cleaning Up
```bash
make clean
```

### Rebuilding
```bash
make re
```

## Volumes

Volumes are mounted at `/home/login/data/` on the host machine, where `login` is your username.

## Security Notes

- All credentials must be stored securely
- No sensitive information in Git repository
- Use environment variables for configuration
- Implement Docker secrets for sensitive data

## Development

1. Make sure to test all services individually
2. Validate TLS configuration
3. Verify volume persistence
4. Test container restart functionality
5. Validate WordPress and database configuration

## Resources

- [Docker Documentation](https://docs.docker.com/)
- [WordPress Documentation](https://wordpress.org/documentation/)
- [NGINX Documentation](https://nginx.org/en/docs/)
- [MariaDB Documentation](https://mariadb.com/docs/)


