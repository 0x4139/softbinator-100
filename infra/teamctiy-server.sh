#!/usr/bin/env bash
docker service create --name teamcity-server \
--network internal \
-e SERVICE_PORTS="8111" \
-e VIRTUAL_HOST="https://teamcity.infra.ink, http://teamcity.infra.ink" \
-e FORCE_SSL=true \
--constraint "node.labels.type == internal-manager" \
--mount type=volume,src=teamcity-data,dst=/data/teamcity-server \
--mount type=volume,src=teamcity-logs,dst=/opt/teamcity/logs \
jetbrains/teamcity-server