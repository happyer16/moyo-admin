git pull origin master
docker build -t admin .
docker run -d -p 9000:9000 admin
docker rmi $(docker images | grep "none" | awk '/ / { print $35 }')
