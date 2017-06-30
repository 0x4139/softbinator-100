#!/usr/bin/env bash
docker service create --name teamcity-agent \
--network internal \
--mode global \
-e SERVER_URL="http://teamcity-server:8111" \
--constraint "node.labels.type == internal-worker" \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
--mount type=volume,src=teamcity-agent-data,dst=/data/teamcity_agent \
jetbrains/teamcity-agent