#!/usr/bin/env bash
docker service create \
--network external_network \
-e SERVICE_PORTS="5000" \
-e VIRTUAL_HOST="https://registry.infra.ink, http://registry.infra.ink" \
-e FORCE_SSL=true \
--name registry \
--constraint "node.labels.role == worker" \
--mount type=volume,src=registry,dst=/var/lib/registry \
registry:2