#!/bin/sh

IMAGE_NS=crazychenz
IMAGE_NAME=xltr
IMAGE_TAG=ubuntu-20.04
IMAGE_FULLNAME=${IMAGE_NS}/${IMAGE_NAME}:$IMAGE_TAG

cat Dockerfile | docker build \
  --build-arg image_name="$IMAGE_NAME" \
  --build-arg uid="$(id -u)" \
  --build-arg gid="$(id -g)" \
  --build-arg groups="$(id -Gn)" \
  -t "$IMAGE_FULLNAME" -f - . \
  && echo "Created image $IMAGE_NS/$IMAGE_NAME"


