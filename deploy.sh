#ssh -t ubuntu@54.242.33.225 sudo -- "sh -c 'docker login --username "meetmanvar" --password "Meet.docker@1234" && docker stop jenkins && docker rm jenkins && docker rmi meetmanvar/cicdrepo:latest && docker run --name jenkins -p 3001:3000 meetmanvar/cicdrepo:latest'"
ssh ubuntu@54.242.33.225 << 'ENDSSH'
docker login --username "meetmanvar" --password "Meet.docker@1234"
docker stop jenkins
docker rm jenkins
docker rmi meetmanvar/cicdrepo:$1
docker run --name jenkins -p 3001:3000 -d meetmanvar/cicdrepo:$1
ENDSSH
