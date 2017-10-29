FROM python:2.7.14-alpine3.6
MAINTAINER Lyle Dean
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN mkdir -p ~/packages
EXPOSE 8000
CMD pypi-server -p 8000 ~/packages