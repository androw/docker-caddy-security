FROM caddy:2.7.4-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.20

FROM caddy:2.7.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
