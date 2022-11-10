FROM ubuntu:22.10
USER root

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get upgrade && \
	apt-get install -y nano \
	python3 \
	python3-dev \
	python3-pip \
	python3-setuptools \
	libopencv-dev \
	libgl1-mesa-dev \
	libglib2.0-0 \
	libsm6 \
	libxrender1 \
	libxext6
RUN python3 -m pip install --upgrade pip setuptools && \
	python3 -m pip install numpy && \
	python3 -m pip install opencv-python && \
	python3 -m pip install discord.py

RUN mkdir /home/workspace