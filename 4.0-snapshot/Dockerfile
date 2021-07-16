FROM openjdk:11-jre-alpine
LABEL maintainer="felixlohmeier@opencultureconsulting.com"
# OpenRefine 4.0-snapshot

ENV OR_URL https://github.com/felixlohmeier/openrefine-4-snapshot/releases/download/2021-07-12/openrefine-linux-4.0-SNAPSHOT.tar.gz

WORKDIR /app

RUN set -xe \
    && apk add --no-cache bash curl grep tar \
    && curl -sSL ${OR_URL} | tar xz --strip 1

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
