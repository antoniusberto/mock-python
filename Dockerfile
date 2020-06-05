FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install -y python3
RUN apt-get install -y curl

WORKDIR /server

COPY server.py /server

RUN ["pwd"]

CMD [ "python3", "./server.py" ]

EXPOSE 8008