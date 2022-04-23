FROM caddy:2.4.6-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.4

FROM caddy:2.4.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
