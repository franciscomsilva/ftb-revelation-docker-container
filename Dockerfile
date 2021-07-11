FROM openjdk:8-jre

MAINTAINER Francisco Silva (https://github.com/franciscomsilva)

# Updating container
RUN apt-get update && \
        apt-get install apt-utils --yes && \
        apt-get upgrade --yes --allow-remove-essential && \
        apt-get clean 

# Setting workdir
WORKDIR /minecraft

# Changing user to root
USER root

# Creating user and downloading files
RUN useradd -m -U minecraft && \
                mkdir -p /minecraft/world && \
                wget https://api.modpacks.ch/public/modpack/35/37/server/linux -O serverinstall_35_37 && \
                chmod +x serverinstall_35_37 && \
                echo "eula=true" >> eula.txt && \
                chown -R minecraft:minecraft /minecraft

USER minecraft

RUN /minecraft/serverinstall_35_37
RUN chmod u+x /minecraft/start.sh

# Expose port 25565
EXPOSE 25565

# Expose volume
VOLUME ["/minecraft"]

# Start server
ENTRYPOINT ["/bin/bash", "/minecraft/start.sh"]

