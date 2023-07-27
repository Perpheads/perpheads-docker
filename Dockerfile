FROM ghcr.io/pterodactyl/games:source

USER root
RUN apt-get install -y git
USER container

COPY assets/ /

CMD ["/bin/sh", "/home/container/wrapper.sh"]