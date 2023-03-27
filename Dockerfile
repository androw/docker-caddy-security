FROM caddy:2.6.4-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.19

FROM caddy:2.6.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
