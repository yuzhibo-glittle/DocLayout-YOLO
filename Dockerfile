FROM python:3.10-slim-buster

COPY pyproject.toml .

COPY . /root/code
WORKDIR /root/code

RUN mkdir -p layout_data models

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -e . --extra-index-url https://download.pytorch.org/whl/cu121

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y