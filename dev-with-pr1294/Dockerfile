FROM ubuntu:trusty
MAINTAINER felixlohmeier <felixlohmeier@opencultureconsulting.com>
# based on OpenRefine fork https://github.com/opencultureconsulting/OpenRefine (OpenRefine Development Version with pull request #1294 from @claussni to extend cross ())

# Install JDK after system updates
RUN apt-get update && apt-get install -y wget ant unzip openjdk-7-jdk && apt-get clean

WORKDIR /app

# Build OpenRefine
RUN wget --no-check-certificate https://github.com/opencultureconsulting/OpenRefine/archive/master.zip
RUN unzip master.zip  && rm master.zip
RUN OpenRefine-master/refine build

# Remove JDK and install JRE
RUN apt-get remove -y openjdk-7-jdk
RUN apt-get install openjdk-7-jre-headless

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/OpenRefine-master/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
