FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com> 

ENV REFRESHED_AT=2015-08-01

RUN apk --update add nginx

COPY 2048/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
