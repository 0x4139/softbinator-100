#!/usr/bin/env bash
docker service create \
--network internal \
-e SERVICE_PORTS="9000" \
-e VIRTUAL_HOST="https://admin.infra.ink, http://admin.infra.ink" \
-e FORCE_SSL=true \
--name portainer \
--constraint "node.labels.type == internal-manager" \
--mount type=volume,src=portainer,dst=/data \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
portainer/portainer:1.12.4 \
-H unix:///var/run/docker.sock