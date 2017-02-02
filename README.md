# OpenRefine-docker
[OpenRefine](http://openrefine.org/) is a free, open source power tool for working with messy data and improving it. These docker images are automatically build from released versions (2.6rc1, 2.6rc2) or from the official GitHub Repository (latest).

GitHub Repository with Docker 

These docker images are inspired by docker image [vimagick/openrefine](https://hub.docker.com/r/vimagick/openrefine/) and [psychemedia/openrefine](https://hub.docker.com/r/psychemedia/openrefine/).

### versions
cf. [OpenRefine Releases](https://github.com/OpenRefine/OpenRefine/releases)

OpenRefine 2.6 Release Candidate 2 (2015-10-14) from java:8-jre-alpine **[2.6rc2]**
> docker pull felixlohmeier/openrefine:2.6rc2

OpenRefine 2.6 Release Candidate 1 (2015-04-30) from java:8-jre-alpine **[2.6rc1]**
> docker pull felixlohmeier/openrefine:2.6rc1

OpenRefine Development Version (automated build) from ubuntu:trusty + jdk **[latest]**
> docker pull felixlohmeier/openrefine

### usage
> docker run -p 80:3333 felixlohmeier/openrefine:2.6rc2

point your browser on host machine to http://localhost or point browser on any machine within your network to http://<ip address of host machine>

### example for customized run command

```docker run --rm -p 80:3333 -v /home/felix/refine:/data:z felixlohmeier/openrefine -i 0.0.0.0 -m 4G -d /data```

* automatically remove docker container when it exits
* publish internal port 3333 to host port 80
* mount host directory /home/felix/refine as working directory
* make openrefine available in the network
* increase java heap size to 4 GB
* set refine workspace to /data
* set refine workspace to /data

### batch processing with python client

see https://hub.docker.com/r/felixlohmeier/openrefine-client/
