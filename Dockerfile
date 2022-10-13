FROM ubuntu:latest

ENV PYTHON_VERSION 3.10.1
ENV PYTHON_PIP_VERSION 21.3.1
ENV HOME /root
ENV PYTHON_ROOT $HOME/local/python-$PYTHON_VERSION
ENV PATH $PYTHON_ROOT/bin:$PATH
ENV PYENV_ROOT $HOME/.pyenv


# タイムゾーン
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# apt
RUN apt update
RUN apt install -y libopencv-dev

# install python and pip
RUN apt install -y python3 python3-pip
RUN pip install --upgrade pip

# set working directory and copy files
WORKDIR /python/app
COPY ./ /python/app

#Macのカメラを使うための設定

# install python packages この順番でないとエラーになる
#RUN pip install cmake
#RUN pip install dlib
#RUN pip install face_recognition

# install opencv
#RUN pip install -r requirements.txt
