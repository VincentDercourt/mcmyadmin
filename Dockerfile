FROM debian:latest

LABEL maintainer="vincent@happyguard.fr" \
	  version=1.0 \
	  description="Create a mcMyAdmin panel"

RUN apt-get update && apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jre wget unzip sudo screen expect
  
RUN useradd -ms /bin/bash minecraft
Run echo "minecraft ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user

VOLUME /server

RUN cd /usr/local && wget http://mcmyadmin.com/Downloads/etc.zip && unzip etc.zip; rm etc.zip && cd /server

RUN chown -R 1000:1000 /server

ENV PASSWORD=changeMe

EXPOSE 25565 25565/udp 8080

COPY *.* /

RUN chmod +x /init.sh

WORKDIR /server

USER  minecraft

CMD ["/init.sh"]