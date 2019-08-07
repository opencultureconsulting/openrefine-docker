# Docker container for OpenRefine

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/331a584a806e45feba63ed8871329c7a)](https://www.codacy.com/app/felixlohmeier/openrefine-docker?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=opencultureconsulting/openrefine-docker&amp;utm_campaign=Badge_Grade)

[OpenRefine](http://openrefine.org/) is a free, open source power tool for working with messy data and improving it.
These docker images are build from official released versions (3.2, 3.1, 3.0, 2.8, 2.7, 2.7rc2, 2.7rc1, 2.6rc2, 2.6rc1, 2.5, 2.1, 2.0) and from a fork (2017-10-28-with-pr1294).

* [GitHub Repository with Dockerbuild files](https://github.com/felixlohmeier/openrefine-docker)
* [Docker Hub with docker images](https://hub.docker.com/r/felixlohmeier/openrefine/)

Dockerbuild files are inspired by [vimagick/openrefine](https://hub.docker.com/r/vimagick/openrefine/) and [psychemedia/openrefine](https://hub.docker.com/r/psychemedia/openrefine/).

### Versions

cf. [OpenRefine Releases](https://github.com/OpenRefine/OpenRefine/releases)

OpenRefine 3.2 (2019-07-16) from adoptopenjdk/openjdk12:alpine-jre **[3.2-java12]**

OpenRefine 3.2 (2019-07-16) adoptopenjdk/openjdk11:alpine-jre **[3.2-java11]**

OpenRefine 3.2 (2019-07-16) from openjdk:10-jre-alpine **[3.2-java10]**

OpenRefine 3.2 (2019-07-16) from adoptopenjdk/openjdk9:alpine-slim **[3.2-java9]**

OpenRefine 3.2 (2019-07-16) from openjdk:8-jre-alpine **[3.2]** & **[latest]**

OpenRefine 3.1 (2018-11-29) from adoptopenjdk/openjdk9:alpine-slim **[3.1-java9]**

OpenRefine 3.1 (2018-11-29) from openjdk:8-jre-alpine **[3.1]**

OpenRefine 3.0 (2018-09-16) from adoptopenjdk/openjdk9:alpine-slim **[3.0-java9]**

OpenRefine 3.0 (2018-09-16) from openjdk:8-jre-alpine **[3.0]**

OpenRefine 2.8 (2017-11-19) from adoptopenjdk/openjdk9:alpine-slim **[2.8-java9]**

OpenRefine 2.8 (2017-11-19) from openjdk:8-jre-alpine **[2.8]**

OpenRefine 2.8 (2017-11-19) from openjdk:7-jre **[2.8-java7]**

OpenRefine 2.7 (2017-06-18) from openjdk:8-jre-alpine **[2.7]**

OpenRefine 2.7 (2017-06-18) from openjdk:7-jre **[2.7-java7]**

OpenRefine 2.7 Release Candidate 2 (2017-03-03) from openjdk:8-jre-alpine **[2.7rc2]**

OpenRefine 2.7 Release Candidate 1 (2017-02-10) from openjdk:8-jre-alpine **[2.7rc1]**

OpenRefine 2.6 Release Candidate 2 (2015-10-14) from openjdk:8-jre-alpine **[2.6rc2]**

OpenRefine 2.6 Release Candidate 1 (2015-04-30) from openjdk:8-jre-alpine **[2.6rc1]**

Google Refine 2.5 (2011-12-11) from openjdk:7-jre **[2.5-java7]**

Google Refine 2.5 (2011-12-11) from openjdk:6-jre **[2.5-java6]**

Google Refine 2.1 (2011-07-12) from openjdk:6-jre **[2.1-java6]**

Google Refine 2.0 (2010-11-10) from openjdk:6-jre **[2.0-java6]**

OpenRefine [fork](https://github.com/opencultureconsulting/OpenRefine) with extended cross (snapshot 2017-10-28 with pull request #1294) from openjdk:8-jre-alpine **[2017-10-28-with-pr1294]**

### Usage
```
docker run -p 3333:3333 felixlohmeier/openrefine:3.2
```

point your browser on host machine to http://localhost:3333 (or on any machine within your network)

### Example for customized run command

```
docker run --rm -p 80:3333 -v /home/felix/refine:/data:z felixlohmeier/openrefine:3.2 -i 0.0.0.0 -d /data -m 4G
```

* automatically remove docker container when it exits (`--rm`)
* publish internal port 3333 to host port 80 (`-p 80:3333`)
* let OpenRefine read and write data in host directory
  * mount host path /home/felix/refine to container path /data (`-v /home/felix/refine:/data:z`)
  * set OpenRefine workspace to /data (`-d /data`)
* pin docker tag 3.2 (i.e. OpenRefine version) (`:3.2`)
* set Openrefine to be accessible from outside the container, i.e. from host (`-i 0.0.0.0`)
* increase java heap size to 4G (`-m 4g`)

### See also

* Command line interface for OpenRefine: [openrefine-client](https://github.com/opencultureconsulting/openrefine-client/#docker)
* Linux Bash script to run OpenRefine in batch mode (import, transform, export): [openrefine-batch-docker.sh](https://github.com/opencultureconsulting/openrefine-batch/#docker)
