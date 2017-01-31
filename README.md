Docker image for installing the Docker demo into the (Stackinabox.io)[http://stackinabox.io] vagrant environment

#### Currently sets up a docker-engine component and serveral processes to create a docker swarm using the
blueprint designer.  See notes in cmd output after running 
```
docker run --rm stackinabox/demo-docker:1.0 /docker/init
```

####

To build:

```
docker build -t stackinabox/demo-docker:%version.number% .
```

To use: (you need to be logged into the [stackinabox.io vm](http://shell.stackinabox.io) running locally as demo/labstack)

```
docker run --rm -v /vagrant/compose:/compose -v /var/run/docker.sock:/var/run/docker.sock stackinabox/demo-docker:dev
```


