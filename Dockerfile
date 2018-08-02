FROM ubuntu:16.04
MAINTAINER Secrect Nguyen
#Install python
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install python python-pip -y
#Install webssh
RUN pip install webssh -y
EXPOSE 8022 8022
CMD wssh --address='0.0.0.0' --port=8022
