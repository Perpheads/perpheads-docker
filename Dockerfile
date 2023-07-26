FROM ghcr.io/pterodactyl/games:source

USER root
RUN apt-get install -y git
USER container

ADD assets/.env /home/container/
COPY assets/ /home/container/

CMD ["/bin/sh", "/home/container/wrapper.sh"]