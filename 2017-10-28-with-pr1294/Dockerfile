FROM java:8-jre-alpine
LABEL maintainer="felixlohmeier@opencultureconsulting.com"
# OpenRefine snapshot 2017-10-28 with pull request #1294

ENV OR_URL https://github.com/opencultureconsulting/OpenRefine/releases/download/2017-10-28-with-pr1294/openrefine-linux-2017-10-28-with-pr1294.tar.gz

WORKDIR /app

RUN set -xe \
    && apk add --no-cache bash curl jq tar \
    && curl -sSL ${OR_URL} | tar xz --strip 1

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
