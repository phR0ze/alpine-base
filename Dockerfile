FROM alpine:3.9

RUN echo ">> Install/configure base" && \
  apk add --no-cache bash bash-completion curl
COPY config/* /root/
