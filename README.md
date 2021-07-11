# ftb-revelation-docker-container

## Introduction

Custom Dockerfile and docker-compose.yml to run a FTB Revelation Server 3.2.0

This custom images enables:
* attaching to the container to issue server commands
* maps the entire data folder to the host to facilitate interacting with server files


## Instalation
* Install docker and docker-compose
* Change the volume map to your host's server location path
* `cd server-folder && docker-compose up -d` 
