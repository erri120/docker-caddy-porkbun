ARG CADDY_VERSION=2.6.2

# Builder
FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/porkbun

# Container
FROM caddy:${CADDY_VERSION}-alpine

# install additional packages
RUN apk add --no-cache tzdata

LABEL org.opencontainers.image.vendor="erri120"
LABEL org.opencontainers.image.documentation="https://github.com/erri120/docker-caddy-porkbun"
LABEL org.opencontainers.image.source="https://github.com/erri120/docker-caddy-porkbun"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
