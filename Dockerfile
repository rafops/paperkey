FROM ubuntu:focal
RUN apt update && apt -y full-upgrade
RUN apt install -y gnupg qrencode zbar-tools imagemagick pdftk img2pdf
WORKDIR /root
COPY bin bin
ENTRYPOINT ["bash"]
