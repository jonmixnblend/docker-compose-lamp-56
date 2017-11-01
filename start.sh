#!/bin/sh

docker_running=$(docker-machine ls | grep default)
if [[ "$docker_running" == *"Stopped"* ]]
then
	echo "fyi - docker not running \n"
	docker-machine start default
        echo "\n fyi - docker machine now running \n"
fi

eval "$(docker-machine env default)"

echo "\n Stopping all previous containers \n"

docker stop $(docker ps -a -q)

echo "\n Starting all containers via docker-compose \n"

docker-compose up -d

eval "$(docker-machine env default)"