# From Keras TensorFlow-Models to production

## Jupyterlab starten
```bash
docker pull codecentric/from-keras-to-production-baseimage
```
## Run on Mac & Linux

```bash
docker run -p 8888:8888 -v $(pwd)/notebooks:/keras2production/notebooks codecentric/from-keras-to-production-baseimage
```

## Run on Windows

```bash
docker run -p 8888:8888 -v %cd%/notebooks:/keras2production/notebooks codecentric/from-keras-to-production-baseimage
```
