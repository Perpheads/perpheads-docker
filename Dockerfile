FROM ghcr.io/pterodactyl/games:source

USER root
RUN apt-get install -y git
USER container