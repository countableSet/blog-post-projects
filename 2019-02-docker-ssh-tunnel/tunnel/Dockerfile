FROM alpine:3.8

ENV SSH_CONNECTION_USER="root"
ENV SSH_CONNECTION_PORT="22"
ENV SSH_CONNECTION_HOST="localhost"
ENV SSH_TUNNEL="-L 0.0.0.0:80:127.0.0.1:8080"

RUN apk add --no-cache openssh-client su-exec bash \
    && mkdir -p /root/.ssh \
    && chwon 700 /root/.ssh

COPY ./ssh-config /root/.ssh/config
COPY ./ssh.sh /root/ssh.sh

RUN chmod 755 /root/ssh.sh

WORKDIR /root
ENTRYPOINT [ "./ssh.sh" ]
RUN [ "ssh" ]