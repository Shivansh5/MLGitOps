FROM centos:latest

RUN yum install python3 -y
RUN yum install python3-pip -y


WORKDIR  /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt


CMD ["python3","app.py"]

