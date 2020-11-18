# Android API 29 with Java 8
FROM circleci/android@sha256:b6646fdf7457f61825526e7bfce364d8e533da6ceb1cdb98e371e94348ecc834

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/flutter \
  FLUTTER_ROOT=$FLUTTER_HOME \
  FLUTTER_VERSION=$flutter_version

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --depth=1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
  yes "y" | flutter doctor --android-licenses && \
  flutter doctor
