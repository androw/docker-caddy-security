FROM caddy:2.6.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.15

FROM caddy:2.6.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
