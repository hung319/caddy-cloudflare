# docker-caddy-cloudflare

A Docker image for Caddy v2 with the dns.providers.cloudflare module included.

    docker image pull ghcr.io/baowei/caddy-cloudflare

download caddy-cloudflare binary from release

### Configure

#### Single-key approach

- API Token: Zone.Zone:Read and Zone.DNS:Edit permissions for permission for the domain(s) you're managing with Caddy

```Caddyfile
tls {
	dns cloudflare {env.CF_API_TOKEN}
}
```
