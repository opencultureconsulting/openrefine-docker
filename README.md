# Docker container for OpenRefine Server

[OpenRefine](http://openrefine.org/) is a free, open source power tool for working with messy data and improving it.
These docker images are build from official released versions (3.2, 3.1, 3.0, 2.8, 2.7, 2.7rc2, 2.7rc1, 2.6rc2, 2.6rc1, 2.5, 2.1, 2.0) and from a fork (2017-10-28-with-pr1294).

* [GitHub Repository with Dockerbuild files](https://github.com/felixlohmeier/openrefine-docker)
* [Docker Hub with docker images](https://hub.docker.com/r/felixlohmeier/openrefine/)

Dockerbuild files are inspired by [vimagick/openrefine](https://hub.docker.com/r/vimagick/openrefine/) and [psychemedia/openrefine](https://hub.docker.com/r/psychemedia/openrefine/).

### versions
cf. [OpenRefine Releases](https://github.com/OpenRefine/OpenRefine/releases)

OpenRefine 3.2 (2019-07-16) from java:8-jre-alpine **[3.2] [latest]** 
> docker pull felixlohmeier/openrefine:3.2

OpenRefine 3.1 (2018-11-29) from java:8-jre-alpine **[3.1]**
> docker pull felixlohmeier/openrefine:3.1

OpenRefine 3.1 (2018-11-29) from openjdk:7-jre **[3.1-java7]**
> docker pull felixlohmeier/openrefine:3.1-java7

OpenRefine 3.0 (2018-09-16) from java:8-jre-alpine **[3.0]**
> docker pull felixlohmeier/openrefine:3.0

OpenRefine 3.0 (2018-09-16) from openjdk:7-jre **[3.0-java7]**
> docker pull felixlohmeier/openrefine:3.0-java7

OpenRefine 2.8 (2017-11-19) from java:8-jre-alpine **[2.8]**
> docker pull felixlohmeier/openrefine:2.8

OpenRefine 2.8 (2017-11-19) from openjdk:7-jre **[2.8-java7]**
> docker pull felixlohmeier/openrefine:2.8-java7

OpenRefine 2.8 (2017-11-19) from openjdk:6-jre **[2.8-java6]**
> docker pull felixlohmeier/openrefine:2.8-java6

OpenRefine 2.7 (2017-06-18) from java:8-jre-alpine **[2.7]**
> docker pull felixlohmeier/openrefine:2.7

OpenRefine 2.7 (2017-06-18) from openjdk:7-jre **[2.7-java7]**
> docker pull felixlohmeier/openrefine:2.7-java7

OpenRefine 2.7 (2017-06-18) from openjdk:7-jre **[2.7-java6]**
> docker pull felixlohmeier/openrefine:2.7-java6

OpenRefine 2.7 Release Candidate 2 (2017-03-03) from java:8-jre-alpine **[2.7rc2]**
> docker pull felixlohmeier/openrefine:2.7rc2

OpenRefine 2.7 Release Candidate 1 (2017-02-10) from java:8-jre-alpine **[2.7rc1]**
> docker pull felixlohmeier/openrefine:2.7rc1

OpenRefine 2.6 Release Candidate 2 (2015-10-14) from java:8-jre-alpine **[2.6rc2]**
> docker pull felixlohmeier/openrefine:2.6rc2

OpenRefine 2.6 Release Candidate 1 (2015-04-30) from java:8-jre-alpine **[2.6rc1]**
> docker pull felixlohmeier/openrefine:2.6rc1

Google Refine 2.5 (2011-12-11) from openjdk:7-jre **[2.5-java7]**
> docker pull felixlohmeier/openrefine:2.5-java7

Google Refine 2.5 (2011-12-11) from openjdk:6-jre **[2.5-java6]**
> docker pull felixlohmeier/openrefine:2.5-java6

Google Refine 2.1 (2011-07-12) from openjdk:6-jre **[2.1-java6]**
> docker pull felixlohmeier/openrefine:2.1-java6

Google Refine 2.0 (2010-11-10) from openjdk:6-jre **[2.0-java6]**
> docker pull felixlohmeier/openrefine:2.0-java6

OpenRefine [fork](https://github.com/opencultureconsulting/OpenRefine) with extended cross (snapshot 2017-10-28 with pull request #1294) from java:8-jre-alpine **[2017-10-28-with-pr1294]**
> docker pull felixlohmeier/openrefine:2017-10-28-with-pr1294

### usage
> docker run -p 3333:3333 felixlohmeier/openrefine:latest

point your browser on host machine to http://localhost:3333 (or on any machine within your network)

### example for customized run command

```docker run --rm -p 80:3333 -v /home/felix/refine:/data:z felixlohmeier/openrefine:latest -i 0.0.0.0 -m 4G -d /data```

* automatically remove docker container when it exits
* publish internal port 3333 to host port 80
* mount host directory /home/felix/refine as working directory
* make openrefine available in the network
* increase java heap size to 4 GB
* set refine workspace to /data

### batch processing with python client

see https://hub.docker.com/r/felixlohmeier/openrefine-client/ for a command line interface (e.g. for usage in shell scripts)
