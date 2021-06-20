FROM ubuntu:focal

RUN apt update && apt -y full-upgrade
RUN apt install -y gnupg dialog qrencode zbar-tools imagemagick pdftk img2pdf

WORKDIR /home/paperkey
COPY bin bin
RUN chmod a+x bin/*

RUN groupadd -g 1000 -r paperkey && useradd -u 1000 -r -g paperkey paperkey
USER paperkey

ENTRYPOINT ["bash"]
