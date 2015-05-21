FROM nginx:latest

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*
 
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2 -P /usr/share/nginx/html
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS -P /usr/share/nginx/html
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS.asc -P /usr/share/nginx/html
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS.sig -P /usr/share/nginx/html
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.sig -P /usr/share/nginx/html

COPY . /usr/share/nginx/html
