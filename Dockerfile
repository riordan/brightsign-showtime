FROM shariqiqbal2810/opencv-conda
MAINTAINER David Riordan <dr@daveriordan.com>

RUN conda install -y \
    jupyter \
    numpy \
    pillow \
    scipy


RUN mkdir /opt/notebooks

ENTRYPOINT jupyter notebook \
  --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser

EXPOSE 8888
