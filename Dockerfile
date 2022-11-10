FROM python:3.8-buster
USER root

RUN apt-get update && \
    apt-get install -y nano
# OpenCVの依存パッケージ
RUN apt install libsm6 libxext6 libxrender-dev  && \
    # Discord.pyの依存パッケージ
    apt install libfii-dev libnacl-dev python3-dev
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install opencv-python
RUN python -m pip install numpy && \
    python -m pip install discord.py

RUN mkdir ~/workspace && cd workspace