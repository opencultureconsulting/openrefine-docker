FROM alpine:latest
MAINTAINER felixlohmeier <felixlohmeier@opencultureconsulting.de>
# Client for batch processing with OpenRefine: https://github.com/PaulMakepeace/refine-client-py/
# expects an OpenRefine container running with --name=refine-server
# !!!LEGACY/DEPRECATED!!! Please use improved version at https://hub.docker.com/r/felixlohmeier/openrefine-client/

# Install python, pip, wget, unzip and bash
RUN apk add --no-cache \
	bash \
	python \
	py-pip \
	wget \
	unzip

# Install dependency urllib2_file
RUN pip install urllib2_file==0.2.1

# Download and build refine-client-py
WORKDIR /app
RUN wget --no-check-certificate https://github.com/PaulMakepeace/refine-client-py/archive/master.zip
RUN unzip master.zip && rm master.zip
RUN python refine-client-py-master/setup.py build
RUN python refine-client-py-master/setup.py install

# Change docker WORKDIR (shall be mounted)
WORKDIR /data

# Execute refine.py with option host = refine-server
ENTRYPOINT ["/app/refine-client-py-master/refine.py", "-H", "refine-server"]

# Default command: list projects
CMD ["-l"]
