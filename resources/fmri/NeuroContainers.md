
[As defined here](https://github.com/ReproNim/neurodocker): "Neurodocker is a command-line program that generates custom Dockerfiles and Singularity recipes for neuroimaging and minifies existing containers."


```
docker run --rm repronim/neurodocker:0.7.0 generate docker \
  --pkg-manager apt \
  --base debian:buster-slim \
  --fsl version=6.0.3 \
  --miniconda \
       version=py37_4.10.3 \
       create_env=neuro \
       pip_install="setuptools Cython nibabel nilearn nipype numpy pandas scipy" \
       activate=true \
> fsl603.Dockerfile

docker build --tag fsl:6.0.3 --file fsl603.Dockerfile .
```

After creating the dockerfile (named `fsl603.Dockerfile` in the example above) you can build the image running

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
