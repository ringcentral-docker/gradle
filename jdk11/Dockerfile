FROM ghcr.io/ringcentral-docker/jdk/jdk:11.0.25-alpine
LABEL maintainer="john.lin@ringcentral.com"

CMD ["gradle"]

ENV GRADLE_VERSION=6.9.1 \
	GRADLE_HOME=/opt/gradle

ARG GRADLE_DOWNLOAD_SHA256=936f16e90d95df170320fec7b01418d0f4c165099440446466eb93a05cef0c2a
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