# alpine-base
Base Alpine container for production Docker apps

## Apps
Note: `busybox` is included by default with the `alpine` base image.

* bash - 684 kB
* bash-completion - 2.09 MB
* busybox - 884 kB
* curl - 196 kB

## Configuration
* .bashrc
* .dircolors

## Build
```bash
$ git clone https://github.com/phR0ze/alpine-base
$ cd alpine-base
$ docker build -t alpine-base .
```

## Use from dockerhub
```bash
$ docker pull phr0ze/alpine-base
```

## Update in dockerhub
```bash
$ docker push phr0ze/alpine-base:tagname
```
