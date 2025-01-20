#!/bin/bash
certbot certonly --webroot -w /var/www/certbot -d task.obotzap.com --email jvcs.mecatronica@gmail.com --agree-tos --non-interactive
