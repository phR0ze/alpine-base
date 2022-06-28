alpine-base
====================================================================================================
[![build-badge](https://github.com/phR0ze/alpine-base/workflows/Build%20Docker%20Image/badge.svg)](https://github.com/phR0ze/alpine-base/actions)
![docker-badge](https://img.shields.io/docker/v/phr0ze/alpine-base?label=Docker%20Image)

Base Alpine container for production with minimal tooling

**Docker Image Size: 10.8 MB**

## Apps
https://pkgs.alpinelinux.org/packages

Additional apps included which pull in their own dependencies:  
`apk add --no-cache bash bash-completion ca-certificates curl`

| Package                   | Size      | Installed | Description
| ------------------------- | --------- | --------- | ------------------------------------------
| `bash`                    | 399.9 kB  | 1.14 MB   | The GNU Bourne Again shell
| `bash-completion`         | 2.09 MB   | 2.19 MB   | Command-line tab-completion for bash
| `ca-certificates`         | 171.09 kB | 720 kB    | Common CA certificates PEM files
| `curl`                    | 113.17 kB | 220 kB    | URL retrival utility and library
| `ncurses-terminfo-base`   | 9.16 kB   | 92 kB     | Descriptions of common terminals
| `ncurses-terminfo`        | 718.16 kB | 6.97 MB   | Console display library (other terminfo files)
| `ncurses-libs`            | 202.34 kB | 492 kB    | Ncurses libraries
| `readline`                | 115.08 kB | 292 kB    | GNU readline library
| `nghttp2-libs`            | 64.67 kB  | 152 kB    | Experimental HTTP/2 client, server and proxy (libraries)
| `libssh2`                 | 71.45 kB  | 176 kB    | library for accessing ssh1/ssh2 protocol servers
| `libcurl`                 | 206.88 kB | 444 kB    | The multiprotocol file transfer library

Included by `alpine` by default:
* Get list `docker run --rm alpine:3.16 apk info -q | sort`
* Get detail `docker run --rm alpine:3.16 apk info musl -q -a`

| Package                   | Size      | Installed | Description
| ------------------------- | --------- | --------- | ------------------------------------------
| `alpine-baselayout`       | 26.01 kB  | 396 kB    | Alpine base dir structure and init scripts
| `alpine-baselayout-data`  | 10.92 kB  | 72 kB     | Alpine base dir structure and init scripts data
| `alpine-keys`             | 5.23 kB   | 96 kB     | Public keys for Alpine Linux packages
| `apk-tools`               | 100.42 kB | 256 kB    | Alpine Package Keeper - package manager for alpine
| `busybox`                 | 489.62 kB | 920 kB    | Size optimized toolbox of many common UNIX utilities
| `ca-certificates-cacert`  | 130.87 kB | 240 kB    | Mozilla bundled certificates
| `libc-utils`              | 1.14 kB   | 4 kB      | Meta package to pull in correct libc
| `libcrypto1.1`            | 1.14 MB   | 2.61 MB   | Crypto library from openssl
| `libssl1.1`               | 205.67 kB | 520 kB    | SSL shared libraries
| `musl`                    | 374.03 kB | 608 kB    | the musl c library (libc) implementation
| `musl-utils`              | 37.12 kB  | 144 kB    | the musl c library (libc) implementation tools
| `scanelf`                 | 35.69 kB  | 96 kB     | Scan ELF binaries for stuff
| `ssl_client`              | 4.24 kB   | 28 kB     | EXternal ssl_client for busybox wget
| `zlib`                    | 50.01 kB  | 108 kB    | A compression/decompression Library

## Configuration
* .bashrc
* .dircolors

## Build
```bash
$ git clone https://github.com/phR0ze/alpine-base
$ cd alpine-base
$ docker build -t alpine-base .
```

## Use from DockerHub
```bash
$ docker pull phr0ze/alpine-base
```

## Update in DockerHub

### Update with Actions
1. Push up your changes to the repo
2. Cut a release with the tag version that will be used for the image e.g. `3.16`

### Update manually
```bash
$ docker login
$ docker tag alpine-base:3.16 phr0ze/alpine-base:3.16
$ docker push phr0ze/alpine-base:3.16
$ docker tag alpine-base:3.16 phr0ze/alpine-base:latest
$ docker push phr0ze/alpine-base:latest
```
