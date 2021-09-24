FROM ringcentral/jdk:8u202-alpine3.14
LABEL maintainer="john.lin@ringcentral.com"

CMD ["gradle"]

ENV GRADLE_VERSION=6.9.1 \
	GRADLE_HOME=/opt/gradle

ARG GRADLE_DOWNLOAD_SHA256=8c12154228a502b784f451179846e518733cf856efc7d45b2e6691012977b2fe
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