FROM nginx:latest
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS.asc
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.DIGESTS.sig
RUN wget http://alpha.release.core-os.net/amd64-usr/current/coreos_production_image.bin.bz2.sig

COPY . /usr/share/nginx/html
