FROM debian
USER root

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update -y && apt-get upgrade -y && \
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
	libxext6 \
	libffi-dev \
	libnacl-dev && \
#	python3 -m pip install --upgrade pip \
#	setuptools && \
#	python3 -m pip install numpy \
#	opencv-python \
#	discord.py && \
	mkdir /home/workspace 
