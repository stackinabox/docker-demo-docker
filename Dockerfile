FROM stackinabox/urbancode-deploy-client:6.2.2.0

MAINTAINER Tim Pouyer <tpouyer@us.ibm.com>

# install ucd client --- backward compatibility for now
ADD docker /docker

RUN curl \
	-L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" \
	-o /usr/local/bin/docker-compose && \
	chmod +x /usr/local/bin/docker-compose && \
	chmod +x -R /docker/

CMD ["/docker/init"]
