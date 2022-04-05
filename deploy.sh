#! /bin/bash
ssh ubuntu@54.242.33.225
docker login --username="meetmanvar" --password="Meet.docker@1234"
docker stop meetmanvar/cicdrepo
docker rm meetmanvar/cicdrepo
docker rmi meetmanvar/cicdrepo
docker run -d --name meetmanvar/cicdrepo -p 3000:3000 meetmanvar/cicdrepo
echo "done"
