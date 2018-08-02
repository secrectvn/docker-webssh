FROM ubuntu:16.04
MAINTAINER Secrect Nguyen
#Install python
RUN apt install python python-pip
#Install webssh
RUN pip install webssh
EXPOSE 8022 8022
RUN wssh --address='0.0.0.0' --port=8022
