FROM circleci/android:api-29

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/flutter \
  FLUTTER_ROOT=$FLUTTER_HOME \
  FLUTTER_VERSION=$flutter_version

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --depth=1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
  flutter doctor
