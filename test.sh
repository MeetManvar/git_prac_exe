#! /bin/bash
docker login --username="meetmanvar" --password="Meet.docker@1234"
var=$(docker ps -q)
docker stop $var 
npm install
docker build -t meetmanvar/cicdrepo:latest .
docker push meetmanvar/cicdrepo:latest
docker run -d -p 3000:3000 meetmanvar/cicdrepo:latest
