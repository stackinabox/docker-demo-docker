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

To use: (you need to have stackinabox.io running locally)

```
docker run --rm stackinabox/demo-docker:1.0 /docker/init
```


