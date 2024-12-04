FROM python:3.10-slim-buster

COPY pyproject.toml .

COPY . /root/code
WORKDIR /root/code

RUN mkdir -p layout_data models

RUN pip install -e . --index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install huggingface_hub