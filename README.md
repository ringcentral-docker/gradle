# Gradle Docker Images

Multi-platform Gradle Docker images based on RingCentral JDK.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Gradle | JDK | Docker Hub | GitHub Package |
|------|--------|-----|------------|----------------|
| gradle-jdk8 | 6.9.1 | 8 | `ringcentral/gradle:6.9.1-jdk8u472-noble` | `ghcr.io/ringcentral-docker/gradle:6.9.1-jdk8u472-noble` |
| gradle-jdk11 | 6.9.1 | 11 | `ringcentral/gradle:6.9.1-jdk11.0.29-noble` | `ghcr.io/ringcentral-docker/gradle:6.9.1-jdk11.0.29-noble` |
| gradle-jdk17 | 8.11 | 17 | `ringcentral/gradle:8.11-jdk17.0.17-noble` | `ghcr.io/ringcentral-docker/gradle:8.11-jdk17.0.17-noble` |
| gradle-jdk21 | 8.11 | 21 | `ringcentral/gradle:8.11-jdk21.0.9-noble` | `ghcr.io/ringcentral-docker/gradle:8.11-jdk21.0.9-noble` |
| gradle-jdk25 | 8.11 | 25 | `ringcentral/gradle:8.11-jdk25.0.1-noble` | `ghcr.io/ringcentral-docker/gradle:8.11-jdk25.0.1-noble` |

## Usage

```bash
docker pull ringcentral/gradle:8.11-jdk21
docker run -it ringcentral/gradle:8.11-jdk21 gradle --version
```

## Build Locally

```bash
docker build \
  --build-arg JDK_TAG=21.0.9-noble \
  --build-arg GRADLE_VERSION=8.11 \
  --build-arg GRADLE_SHA256=57dafb5c2622c6cc08b993c85b7c06956a2f53536432a30ead46166dbca0f1e9 \
  -t my-gradle:8.11-jdk21 .
```

## License

MIT License
