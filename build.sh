#!/bin/bash

docker build -t grafana .
#docker tag grafana 192.168.64.3:32000/grafana
#docker push 192.168.64.3:32000/grafana
docker tag grafana registry.metal8.cloud/grafana
docker push registry.metal8.cloud/grafana

microk8s kubectl rollout restart -n observability deployment/kube-prom-stack-grafana
