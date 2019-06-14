# alpine-base
Base Alpine container for production Docker apps

## Apps
Note: `busybox` is included by default with the `alpine` image.

https://pkgs.alpinelinux.org/packages
* bash - 684 kB
* bash-completion - 2.09 MB
* busybox - 884 kB
* ca-certificates - 720 kB
* ca-certificates-cacert - 240 kB
* curl - 228 kB

## Configuration
* .bashrc
* .dircolors

## Build
```bash
$ git clone https://github.com/phR0ze/alpine-base
$ cd alpine-base
$ docker build -t base:3.9 .
```

## Use from dockerhub
```bash
$ docker pull phr0ze/base
```

## Update in dockerhub
```bash
$ docker push phr0ze/base:tagname
```
