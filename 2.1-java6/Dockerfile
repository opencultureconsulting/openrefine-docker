FROM openjdk:6-jre
LABEL maintainer="felixlohmeier@opencultureconsulting.com"
# Google Refine 2.1

ENV OR_URL https://github.com/OpenRefine/OpenRefine/releases/download/2.1/google-refine-2.1-r2136.tar.gz

WORKDIR /app

RUN wget -qO- ${OR_URL} | tar -xz --strip 1

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
