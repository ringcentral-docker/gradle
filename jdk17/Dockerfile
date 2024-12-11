FROM ghcr.io/ringcentral-docker/jdk/jdk:17.0.13-alpine
LABEL maintainer="john.lin@ringcentral.com"

CMD ["gradle"]

ENV GRADLE_VERSION=8.11 \
	GRADLE_HOME=/opt/gradle

ARG GRADLE_DOWNLOAD_SHA256=57dafb5c2622c6cc08b993c85b7c06956a2f53536432a30ead46166dbca0f1e9
RUN set -o errexit -o nounset \
    && echo "Downloading Gradle" \
    && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
    \
    && echo "Checking download hash" \
    && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - \
    \
    && echo "Installing Gradle" \
    && unzip gradle.zip \
    && rm gradle.zip \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle

WORKDIR /home/gradle

RUN set -o errexit -o nounset \
	&& echo "Testing Gradle installation" \
	&& gradle --version