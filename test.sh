#! /bin/bash

var=$(docker ps -lq)
docker stop $var 
npm install
docker build -t meetmanvar/cicdrepo:latest .
docker login --username="meetmanvar" --password="Meet.docker@1234"
docker push meetmanvar/cicdrepo:latest
docker run -p 3000:3000 meetmanvar/cicdrepo:latest
