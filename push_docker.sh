#!/usr/bin/env bash

set -e

docker push artemkozaev/flutter:${FLUTTER_VERSION/+/-}
docker push artemkozaev/flutter:$DOCKER_TAG
