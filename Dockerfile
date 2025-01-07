FROM python:3.12-slim
LABEL maintainer="sfinks417865@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHOUNNBUFFERED 1
ENV PIP_ROOT_USER_ACTION=ignore

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
