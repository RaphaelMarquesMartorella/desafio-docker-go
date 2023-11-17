#!/bin/bash

git clone https://github.com/RaphaelMarquesMartorella/desafio-docker-go.git
cd desafio-docker-go/go
docker build -t go-app .
docker run go-app
