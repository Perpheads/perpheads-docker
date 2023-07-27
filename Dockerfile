FROM ghcr.io/pterodactyl/games:source

USER root
COPY assets/ /
RUN chmod +x /*.sh
RUN apt-get install -y git
RUN git config --global pull.rebase false
USER container


CMD ["/bin/sh", "/wrapper.sh"]