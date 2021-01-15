#!/bin/bash

sudo docker network create -d bridge mynet

if [ $1 == "server" ]
then
	sudo docker container rm server
	sudo docker build -t server -f Dockerfile_server .
	sudo docker run --mount type=bind,source=$(pwd)/scripts,target=/scripts --network=mynet -it --name server server

elif [ $1 == "client" ]
then
	sudo docker container rm client
	sudo docker build -t client -f Dockerfile_client .
	sudo docker run --volume $(pwd)/scripts:/scripts --network=mynet --link=server -it --name client client

else
	echo "Wrong value. Provide 'server' or 'client' value"
	return 2
	fi
