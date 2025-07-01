FROM caddy:builder AS builder
ARG CADDY_VERSION

RUN xcaddy build ${CADDY_VERSION} \
    --with github.com/caddy-dns/cloudflare

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN /usr/bin/caddy version
RUN /usr/bin/caddy list-modules --skip-standard --versions
