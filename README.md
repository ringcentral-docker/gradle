# Gradle Docker Images

Multi-platform Gradle Docker images based on RingCentral JDK.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Gradle | JDK | Docker Hub | GitHub Package |
|------|--------|-----|------------|----------------|
| gradle-jdk8 | 7.6.4 | 8 | `ringcentral/gradle:7.6.4-jdk8u504-noble` | `ghcr.io/ringcentral-docker/gradle:7.6.4-jdk8u504-noble` |
| gradle-jdk11 | 7.6.4 | 11 | `ringcentral/gradle:7.6.4-jdk11.0.32.1-noble` | `ghcr.io/ringcentral-docker/gradle:7.6.4-jdk11.0.32.1-noble` |
| gradle-jdk17 | 9.4.1 | 17 | `ringcentral/gradle:9.4.1-jdk17.0.20.1-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk17.0.20.1-noble` |
| gradle-jdk21 | 9.4.1 | 21 | `ringcentral/gradle:9.4.1-jdk21.0.12.1-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk21.0.12.1-noble` |
| gradle-jdk25 | 9.4.1 | 25 | `ringcentral/gradle:9.4.1-jdk25.0.4.1-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk25.0.4.1-noble` |

## Usage

```bash
docker pull ringcentral/gradle:9.4.1-jdk21
docker run -it ringcentral/gradle:9.4.1-jdk21 gradle --version
```

## Build Locally

```bash
docker build \
  --build-arg JDK_TAG=21.0.12.1-noble \
  --build-arg GRADLE_VERSION=9.4.1 \
  --build-arg GRADLE_SHA256=2ab2958f2a1e51120c326cad6f385153bb11ee93b3c216c5fccebfdfbb7ec6cb \
  -t my-gradle:9.4.1-jdk21 .
```

## License

MIT License
