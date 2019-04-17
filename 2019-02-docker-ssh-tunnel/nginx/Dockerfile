FROM nginx:1.15-alpine

ENV SSH_CONNECTION_USER="root"
ENV SSH_CONNECTION_PORT="22"
ENV SSH_CONNECTION_HOST="localhost"
ENV SSH_TUNNEL="-L 0.0.0.0:80:127.0.0.1:8080"

RUN apk add --no-cache openssh-client su-exec bash \
    && mkdir -p /root/.ssh \
    && chown 700 /root/.ssh

COPY ../tunnel/ssh-config /root/.ssh/config
COPY ../tunnel/ssh.sh /root/ssh.sh

RUN chmod 755 /root/ssh.sh

WORKDIR /root