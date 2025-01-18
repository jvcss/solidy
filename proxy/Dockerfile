FROM caddy:2

COPY ./Caddyfile.template /etc/caddy/Caddyfile.template

# Declare build-time arguments
ARG APP_HOST
ARG EMAIL_HOST

# Use environment variables if available, or fallback to build-time arguments
ENV APP_HOST_ENV=${APP_HOST}
ENV EMAIL_HOST_ENV=${EMAIL_HOST}

# Process the template
RUN sed -e 's|${APP_HOST}|'"${APP_HOST_ENV}"'|g' \
        -e 's|${EMAIL_HOST}|'"${EMAIL_HOST_ENV}"'|g' \
        /etc/caddy/Caddyfile.template > /etc/caddy/Caddyfile

ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
