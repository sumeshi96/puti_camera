FROM python:3.8-buster
USER root

RUN apt-get update

RUN apt-get install -y nano
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN python -m pip install numpy
RUN python -m pip install discord.py
RUN apt install libsm6 libxext6 libxrender-dev
RUN apt install libfii-dev libnacl-dev python3-dev
RUN pip install opencv-python

RUN mkdir ~/workspace