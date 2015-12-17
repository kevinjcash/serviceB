FROM ubuntu
MAINTAINER Kevin Cashman

RUN apt-get update
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install flask
RUN mkdir /opt/app

ADD world.py /opt/app/world.py

CMD ["/usr/bin/python", "/opt/app/world.py"]
