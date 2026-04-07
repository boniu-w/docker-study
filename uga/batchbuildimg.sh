#!/bin/bash

# 定义关联数组：[镜像名]="对应的Dockerfile" 
# ["ci-dp-sys-auth"]="Dockerfile-auth"
# ["ci-dp-sys-admin-svc"]="Dockerfile-admin"

declare -A SERVICE_MAP
SERVICE_MAP=(
  ["ci-dp-sys-gateway"]="Dockerfile-gateway"
  ["ci-dp-peq-asset-svc"]="Dockerfile-asset"
  ["ci-dp-peq-monitoring-inspection-svc"]="Dockerfile-monitoring"
  ["ci-dp-peq-regulation-training-svc"]="Dockerfile-regulation"
  ["ci-dp-peq-strategy-asset-svc"]="Dockerfile-strategy"
)

for IMAGE_NAME in "${!SERVICE_MAP[@]}"
do
    DOCKER_FILE_VAR=${SERVICE_MAP[$IMAGE_NAME]}
    
    echo "正在使用 $DOCKER_FILE_VAR 构建 $IMAGE_NAME ..."
    
    docker build --build-arg JAR_FILE="${IMAGE_NAME}.jar" -t "${IMAGE_NAME}:latest" -f "$DOCKER_FILE_VAR" .
done