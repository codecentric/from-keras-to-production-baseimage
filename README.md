# From Keras TensorFlow-Models to production

## Jupyterlab starten
```bash
docker build . -t keras2production
docker run -p 8888:8888 -v $(pwd)/notebooks:/keras2production/notebooks keras2production
```

