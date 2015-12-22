# serviceB
FROM debian
MAINTAINER Kevin Cashman

EXPOSE 5000

RUN apt-get update && apt-get install -y \
        python \
        python-pip \
    && apt-get clean
RUN pip install flask
RUN mkdir /opt/app

ADD world.py /opt/app/world.py

CMD ["/usr/bin/python", "/opt/app/world.py"]
