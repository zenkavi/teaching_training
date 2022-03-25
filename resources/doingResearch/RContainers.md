


Extending Rocker project

Example Dockerfile [extending and existing rocker image](https://www.rocker-project.org/use/extending/)

```
FROM rocker/tidyverse:4

RUN install2.r --error --skipinstalled --ncpus -1 remotes here foreach

RUN apt-get update && apt-get install -y libmagick++-dev

RUN installGithub.r jbryer/visualMLE

RUN install2.r optparse

RUN install2.r doParallel
```

Using this Dockerfile you can build the image running

```
docker ...
```

Push this image to dockerhub

```
docker ...
```

Spin up a container using this image locally

```
docker ...
```

Pull it to any other machine from dockerhub
```
docker ...
```
