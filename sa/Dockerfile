FROM busybox
MAINTAINER alexwhen <alexwhen@gmail.com>
COPY ./sa/* /sa/
RUN chmod +x /sa/ss

ENTRYPOINT ["/sa/ss"]

EXPOSE 1080



