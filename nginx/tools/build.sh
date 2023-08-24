#!/bin/bash

echo hello world > /var/www/html/index.html

nginx -g daemon off;
