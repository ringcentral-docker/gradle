# Parameterized Gradle Dockerfile
#
# Build example:
#   docker build --build-arg JDK_TAG=21.0.9-noble --build-arg GRADLE_VERSION=8.11 \
#     --build-arg GRADLE_SHA256=57dafb5c2622c6cc08b993c85b7c06956a2f53536432a30ead46166dbca0f1e9 .

ARG JDK_TAG=21.0.9-noble

FROM ghcr.io/ringcentral-docker/jdk:${JDK_TAG}

LABEL maintainer="john.lin@ringcentral.com"

ARG GRADLE_VERSION=8.11
ARG GRADLE_SHA256

ENV GRADLE_VERSION=${GRADLE_VERSION} \
    GRADLE_HOME=/opt/gradle

RUN set -o errexit -o nounset \
    && echo "Downloading Gradle ${GRADLE_VERSION}" \
    && wget --no-verbose --output-document=gradle.zip \
       "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
    && if [ -n "${GRADLE_SHA256}" ]; then \
         echo "Verifying checksum"; \
         echo "${GRADLE_SHA256} *gradle.zip" | sha256sum -c -; \
       fi \
    && echo "Installing Gradle" \
    && unzip gradle.zip \
    && rm gradle.zip \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle

WORKDIR /home/gradle

CMD ["gradle"]

RUN gradle --version
