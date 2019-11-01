#!/usr/bin/env bash

set -e

docker build --cache-from "artemkozaev/flutter:${FLUTTER_VERSION/+/-}" \
             --tag "artemkozaev/flutter:${FLUTTER_VERSION/+/-}" \
             --tag "artemkozaev/flutter:${DOCKER_TAG}" \
             --build-arg "flutter_version=$FLUTTER_VERSION" \
             .
