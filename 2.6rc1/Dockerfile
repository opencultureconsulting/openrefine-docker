FROM java:8-jre-alpine
LABEL maintainer="felixlohmeier@opencultureconsulting.com"
# OpenRefine 2.6 Release Candidate 1

ENV OR_URL https://github.com/OpenRefine/OpenRefine/releases/download/v2.6-rc1/openrefine-linux-2.6-rc1.tar.gz

WORKDIR /app

RUN set -xe \
    && apk add --no-cache bash curl jq tar \
    && curl -sSL ${OR_URL} | tar xz --strip 1

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
