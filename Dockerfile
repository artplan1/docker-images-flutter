FROM circleci/android@sha256:061e2535826cc3fe4c4a440e716bf06c36c80401ee635c339c6803b3e427ebb3

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/flutter \
  FLUTTER_ROOT=$FLUTTER_HOME \
  FLUTTER_VERSION=$flutter_version

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --depth=1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
  yes "y" | flutter doctor --android-licenses && \
  flutter doctor
