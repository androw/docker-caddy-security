FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.31

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
