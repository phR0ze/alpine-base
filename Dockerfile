FROM alpine:3.16

RUN echo ">> Install/configure base" && \
  apk add --no-cache \
  bash \
  bash-completion \
  ca-certificates \
  curl
COPY config/* /root/
