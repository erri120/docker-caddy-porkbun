[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/erri120/docker-caddy-porkbun?label=Docker%20Hub)](https://hub.docker.com/r/erri120/docker-caddy-porkbun)

# docker-caddy-porkbun

This is a custom [Caddy](https://hub.docker.com/_/caddy)-based image that adds the following features:

- adds the [porkbun](https://github.com/caddy-dns/porkbun) module to the base image
- installs the [`tzdata`](https://wiki.alpinelinux.org/wiki/Setting_the_timezone) package, so you can use the `TZ` environment variable
- installs `curl`, so you can add a custom [healthcheck](https://docs.docker.com/compose/compose-file/#healthcheck)

## Usage

The image is availabe on [Docker Hub](https://hub.docker.com/r/erri120/docker-caddy-porkbun) and [GitHub Packages](https://github.com/erri120/docker-caddy-porkbun/pkgs/container/docker-caddy-porkbun). You can use the `latest` tag or a specific Caddy version:

- `erri120/docker-caddy-porkbun:latest` (latest from Docker Hub)
- `ghcr.io/erri120/docker-caddy-porkbun:latest` (latest from GitHub)
- `erri120/docker-caddy-porkbun:2.6.2` (Caddy `2.6.2` from Docker Hub)
- `ghcr.io/erri120/docker-caddy-porkbun:2.6.2` (Caddy `2.6.2` from GitHub)

The following platforms are supported:

- `linux/amd64` (normal x64)
- `linux/arm64` (64-bit ARM, eg: Raspberry Pi 3/4)
- `linux/arm/v7` (32-bit ARM hard-float, eg: Raspberry Pi 2)

Don't forget to [update your config](https://github.com/caddy-dns/porkbun#config-examples) after pulling the image.

## License

See [LICENSE](./LICENSE) for more information.
