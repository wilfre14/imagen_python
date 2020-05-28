FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping
RUN mkdir /datos
WORKDIR /datos
RUN touch f1.txt
RUN mkdir /datos1
WORKDIR /datos1
RUN touch f2.txt
COPY index.html .
COPY app.log /datos
ADD docs docs
ADD f* /datos/
ADD f.tar .
ENV dir=/data dir1=/data1
RUN mkdir $dir && mkdir $dir1










ADD entrypoint.sh /datos1
CMD /datos1/entrypoint.sh


































 

























































