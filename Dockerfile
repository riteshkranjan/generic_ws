FROM ubuntu:16.04
MAINTAINER Ritesh Ranjan "riteshk.ranjan@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev
RUN ls -lrth
COPY ./requirements.txt /app/requirements.txt
RUN ls -lrth
WORKDIR /app
RUN ls -lrth
RUN pip install -r requirements.txt
COPY /app/*.* /app/
RUN ls -lrth
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

