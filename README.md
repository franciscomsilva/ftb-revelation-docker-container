# ftb-revelation-docker-container

## Introduction

Custom Dockerfile and docker-compose.yml to run a FTB Revelation Server 3.2.0

This custom images enables:
* attaching to the container to issue server commands
* maps the entire data folder to the host to facilitate interacting with server files


## Instalation 
### (Assuming user=`minecraft` and server directory=`/home/minecraft/ftbserver`)

* Install docker and docker-compose
* Change the volume map in `docker-compose.yml` to your host's server location path (default is `/home/minecraft/ftbserver/data`)
* `cd /home/minecraft/ftbserver && docker-compose up -d` 

## Execute server commands
* Connect with the container by running `docker attach ftbserver` 
* Write `/help` to get a list of the available commands
* To exit the command line press CTRL+P + CTRL+Q
