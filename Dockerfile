FROM ubuntu:latest

COPY ./build ./build

RUN ./build/apt-get.sh
RUN ./build/docker.sh

RUN rm -rf ./build

CMD [ "/bin/bash" ]
