# docker-2048

simple is better

a smaller docker version of 2048

Base on gabrielecirulli/2048(https://github.com/gabrielecirulli/2048)

Base on alpine

Base on nginx

#dockerfile

FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com>

RUN apk --update add nginx

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


#how to use

git clone this project ,and docker build -t "yourname" .

# docker pull alexwhen/docker-2048
