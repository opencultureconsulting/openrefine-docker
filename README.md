# Docker container for OpenRefine Server

[OpenRefine](http://openrefine.org/) is a free, open source power tool for working with messy data and improving it. These docker images are build from released versions (2.7, 2.7rc2, 2.7rc1, 2.6rc2, 2.6rc1) or from official GitHub Repository (latest).

* [GitHub Repository with Dockerbuild files](https://github.com/felixlohmeier/openrefine-docker)
* [Docker Hub with docker images](https://hub.docker.com/r/felixlohmeier/openrefine/)

Dockerbuild files are inspired by [vimagick/openrefine](https://hub.docker.com/r/vimagick/openrefine/) and [psychemedia/openrefine](https://hub.docker.com/r/psychemedia/openrefine/).

### versions
cf. [OpenRefine Releases](https://github.com/OpenRefine/OpenRefine/releases)

OpenRefine 2.7 (2017-06-18) from java:8-jre-alpine **[2.7]**
> docker pull felixlohmeier/openrefine:2.7

OpenRefine 2.7 Release Candidate 2 (2017-03-03) from java:8-jre-alpine **[2.7rc2]**
> docker pull felixlohmeier/openrefine:2.7rc2

OpenRefine 2.7 Release Candidate 1 (2017-02-10) from java:8-jre-alpine **[2.7rc1]**
> docker pull felixlohmeier/openrefine:2.7rc1

OpenRefine 2.6 Release Candidate 2 (2015-10-14) from java:8-jre-alpine **[2.6rc2]**
> docker pull felixlohmeier/openrefine:2.6rc2

OpenRefine 2.6 Release Candidate 1 (2015-04-30) from java:8-jre-alpine **[2.6rc1]**
> docker pull felixlohmeier/openrefine:2.6rc1

OpenRefine Development Version (automated build) from ubuntu:trusty + jdk **[latest]**
> docker pull felixlohmeier/openrefine

### usage
> docker run -p 80:3333 felixlohmeier/openrefine:2.7

point your browser on host machine to http://localhost or point browser on any machine within your network to http://<ip address of host machine>

### example for customized run command

```docker run --rm -p 80:3333 -v /home/felix/refine:/data:z felixlohmeier/openrefine:2.7 -i 0.0.0.0 -m 4G -d /data```

* automatically remove docker container when it exits
* publish internal port 3333 to host port 80
* mount host directory /home/felix/refine as working directory
* make openrefine available in the network
* increase java heap size to 4 GB
* set refine workspace to /data

### batch processing with python client

see https://hub.docker.com/r/felixlohmeier/openrefine-client/ for a command line interface (e.g. for usage in shell scripts)
