#!/bin/bash
ssh ubuntu@54.242.33.225
docker login -u "meetmanvar" -p "Meet.docker@1234"
docker stop jenkins
docker rm jenkins
docker rmi meetmanvar/cicdrepo:latest
docker run -d --name jenkins -p 3000:3000 meetmanvar/cicdrepo:latest
