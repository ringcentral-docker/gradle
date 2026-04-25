# Gradle Docker Images

Multi-platform Gradle Docker images based on RingCentral JDK.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Gradle | JDK | Docker Hub | GitHub Package |
|------|--------|-----|------------|----------------|
| gradle-jdk8 | 7.6.4 | 8 | `ringcentral/gradle:7.6.4-jdk8u482-noble` | `ghcr.io/ringcentral-docker/gradle:7.6.4-jdk8u482-noble` |
| gradle-jdk11 | 7.6.4 | 11 | `ringcentral/gradle:7.6.4-jdk11.0.30-noble` | `ghcr.io/ringcentral-docker/gradle:7.6.4-jdk11.0.30-noble` |
| gradle-jdk17 | 9.4.1 | 17 | `ringcentral/gradle:9.4.1-jdk17.0.18-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk17.0.18-noble` |
| gradle-jdk21 | 9.4.1 | 21 | `ringcentral/gradle:9.4.1-jdk21.0.10-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk21.0.10-noble` |
| gradle-jdk25 | 9.4.1 | 25 | `ringcentral/gradle:9.4.1-jdk25.0.2-noble` | `ghcr.io/ringcentral-docker/gradle:9.4.1-jdk25.0.2-noble` |

## Usage

```bash
docker pull ringcentral/gradle:9.4.1-jdk21
docker run -it ringcentral/gradle:9.4.1-jdk21 gradle --version
```

## Build Locally

```bash
docker build \
  --build-arg JDK_TAG=21.0.10-noble \
  --build-arg GRADLE_VERSION=9.4.1 \
  --build-arg GRADLE_SHA256=2ab2958f2a1e51120c326cad6f385153bb11ee93b3c216c5fccebfdfbb7ec6cb \
  -t my-gradle:9.4.1-jdk21 .
```

## License

MIT License
