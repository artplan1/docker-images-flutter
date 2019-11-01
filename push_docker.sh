#!/usr/bin/env bash

set -e

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push artemkozaev/flutter:${FLUTTER_VERSION/+/-}
docker push artemkozaev/flutter:$DOCKER_TAG
