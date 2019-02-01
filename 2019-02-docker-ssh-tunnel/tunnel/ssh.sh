#!/bin/bash

cp /root/.ssh/id_copy /root/.ssh/id_local
chmod 600 /root/.ssh/id_local

exec su-exec root ssh \
    -p ${SSH_CONNECTION_PORT} \
    ${SSH_TUNNEL} \
    ${SSH_CONNECTION_USER}@${SSH_CONNECTION_HOST}