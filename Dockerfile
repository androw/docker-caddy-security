FROM caddy:2.5.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.12

FROM caddy:2.5.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
