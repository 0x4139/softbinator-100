#!/usr/bin/env bash
docker service create --name external_loadbalancer \
--network external
-e DEFAULT_SSL_CERT="" \
--mode global \
-p 80:80 \
-p 443:443 \
--mount target=/var/run/docker.sock,source=/var/run/docker.sock,type=bind \
--constraint "node.role == manager" \
--constraint "node.labels.type != internal-manager" \
dockercloud/haproxy