From debian:trixie-slim
#From debian:trixie-backports

#FROM python:3.14

#RUN apt update && apt upgrade
#RUN apt install cmake -y
#RUN pip install --upgrade pip
#RUN pip install svg2tikz

RUN apt update -y && apt upgrade -y
RUN apt install python3 python3-pip -y

ENV PIP_ROOT_USER_ACTION=ignore
###
RUN apt install cmake python3-libxml2 libxslt1-dev -y

## Desde aqui
RUN apt install libxslt1-dev
RUN apt install libxml2-dev
RUN apt install python3-dev


#RUN pip3 install inkex=="1.4.0" --break-system-packages
## hasta aqui estaba sin comentar


RUN apt install python3-lxml -y
RUN apt install python3-cairo -y
RUN apt install libcairo2-dev pkg-config python3-dev -y
RUN apt install libgirepository-2.0-dev -y

RUN pip3 install lxml --break-system-packages
RUN pip3 install inkex=="1.4.0" --break-system-packages
# Al tratar de instalar el svg2tikz falla
#RUN pip3 install svg2tikz --break-system-packages
