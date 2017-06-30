#!/usr/bin/env bash
docker service create --name internal_loadbalancer \
--network internal \
--mode global \
-e STATS_PORT=1936 \
-e STATS_AUTH="admin:admin" \
-e DEFAULT_SSL_CERT="" \
--mount target=/var/run/docker.sock,source=/var/run/docker.sock,type=bind \
--constraint "node.labels.type == internal-manager" \
dockercloud/haproxy