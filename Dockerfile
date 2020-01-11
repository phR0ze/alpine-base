FROM alpine:3.11

RUN echo ">> Install/configure base" && \
  apk add --no-cache \
  bash \
  bash-completion \
  ca-certificates \
  curl
COPY config/* /root/
