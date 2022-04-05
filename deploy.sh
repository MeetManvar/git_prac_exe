#! /bin/bash
ssh ubuntu@54.242.33.225 << ENDSSH
docker login --username="meetmanvar" --password="Meet.docker@1234"
docker stop jenkins
docker rm jenkins
docker rmi meetmanvar/cicdrepo
docker run -d --name jenkins -p 3000:3000 meetmanvar/cicdrepo
echo "done"
exit
ENDSSH
