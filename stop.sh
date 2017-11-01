#!/bin/sh

docker_running=$(docker-machine ls | grep default)
if [[ "$docker_running" == *"Running"* ]]
then
	eval "$(docker-machine env default)"
	echo "docker is  running ... about to stop  \n"
	docker-compose stop
	docker-machine stop default
        echo "\n fyi - docker machine now shut down \n"
fi
