FROM caddy:2.7.5-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.22

FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
