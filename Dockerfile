FROM ubuntu:trusty
MAINTAINER felixlohmeier <felixlohmeier@opencultureconsulting.de>
# OpenRefine 2.6 Development Version
# derived from docker image psychemedia/openrefine for personal use

# Install JDK after updating installed packages.
RUN apt-get update && apt-get install -y wget ant unzip openjdk-7-jdk && apt-get clean

WORKDIR /app

#Build OpenRefine
RUN wget --no-check-certificate https://github.com/OpenRefine/OpenRefine/archive/master.zip
RUN unzip master.zip  && rm master.zip
RUN OpenRefine-master/refine build

#Tidy up
RUN apt-get remove -y openjdk-7-jdk
RUN apt-get install openjdk-7-jre-headless

VOLUME /data
WORKDIR /data

EXPOSE 3333

ENTRYPOINT ["/app/OpenRefine-master/refine"]
CMD ["-i", "0.0.0.0", "-d", "/data"]
