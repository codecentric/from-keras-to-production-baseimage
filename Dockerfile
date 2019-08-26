FROM python:3.6

ADD configs/tini /tini
RUN chmod +x /tini

ENV SHELL /bin/bash

ADD configs/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
WORKDIR /keras2production

ADD requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN python -c 'from keras.applications import VGG16; VGG16(weights="imagenet")'
RUN python -c 'from keras.applications import VGG16; VGG16(weights="imagenet", include_top=False, input_shape=(75, 75, 3))'
RUN python -c 'from keras.applications import ResNet50; ResNet50(weights="imagenet")'
RUN python -c 'from keras.applications import Xception; Xception(weights="imagenet")'

ADD fruits-360 fruits

EXPOSE 8888
ENTRYPOINT ["/tini", "--", "jupyter", "lab"]
