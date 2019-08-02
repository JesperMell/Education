FROM ubuntu
LABEL "label1"="jesper/vlang"
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl -y
RUN curl -O https://raw.githubusercontent.com/vlang/vc/master/v.c \
    cc -std=gnu11 -w -o v v.c \
    ./v -o v compiler
