#!/bin/bash
certbot certonly --webroot -w /var/www/certbot -d task.obotzap.com --email x --agree-tos --non-interactive
