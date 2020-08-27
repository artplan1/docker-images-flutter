# Docker Images for [Flutter](https://flutter.dev/) based on Circle's android image

[![](https://images.microbadger.com/badges/image/artemkozaev/flutter:stable.svg)](https://microbadger.com/images/artemkozaev/flutter:stable "Get your own image badge on microbadger.com")

You can either use it in CI or run locally via Docker:

```bash
docker run --rm -it -v ${PWD}:/build --workdir /build artemkozaev/flutter:<VERSION> flutter test
```

The example above simply mount current working directory and runs `flutter test`

CircleCi has most of the layers pre-cached on most of the machines

```bash
stable: Pulling from artemkozaev/flutter
8d691f585fa8: Already exists
3da6fe7ff2ef: Already exists
....
090be27cee1c: Pulling fs layer
```

Average Spin up Environment time is **20s** if image is not found on the machine, **5s** if image is found on machine

## Versions

### 1.20.2

Docker tag: 1.20.2

Flutter version: v1.20.2

### 1.12.13

Docker tag: 1.12.13-5

Flutter version: v1.12.13+hotfix.5

Docker tag: 1.12.13-8

Flutter version: v1.12.13+hotfix.8

### 1.9.1

Docker tag: 1.9.1-6

Flutter version: v1.9.1+hotfix.6

## Manual build

```bash
FLUTTER_VERSION=v1.9.1+hotfix.6 DOCKER_TAG=1.9.1-6 ./build_docker.sh
```
