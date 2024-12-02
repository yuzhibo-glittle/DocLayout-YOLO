FROM python:3.10-slim-buster

COPY pyproject.toml .

RUN pip install -e .

COPY . /nas/hyq/docker_test
WORKDIR /nas/hyq/docker_test