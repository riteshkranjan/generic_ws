FROM ubuntu:latest
MAINTAINER Ritesh Ranjan "riteshk.ranjan@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /ws
WORKDIR /ws
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]