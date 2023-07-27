FROM ghcr.io/pterodactyl/games:source

USER root
COPY assets/ /
RUN chmod +x /*.sh
RUN apt-get install -y git
USER container


CMD ["/bin/sh", "/wrapper.sh"]