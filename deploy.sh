#! /bin/bash
ssh -i "pracExe.pem" ubuntu@54.242.33.225 << 'ENDSSH'
docker login --username="meetmanvar" --password="Meet.docker@1234"
docker stop jenkins
docker rm jenkins
docker rmi meetmanvar/cicdrepo:$var
docker run -d --name jenkins -p 3000:3000 meetmanvar/cicdrepo:$var
echo "done"
exit
ENDSSH
