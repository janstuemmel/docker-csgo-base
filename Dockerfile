FROM ubuntu:16.04

ENV USER server

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install lib32gcc1 curl wget net-tools unzip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && useradd -m $USER

# create directories and give permissions to the user
RUN mkdir /server && chown -R $USER:$USER /server

# change workdir
WORKDIR /home/$USER

# add contents
ADD update.sh .

# change user
USER $USER

# download steamcmd client
RUN curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar -xvz

# download the server files
RUN ./update.sh

# expose ports
EXPOSE 27015/udp 27015
