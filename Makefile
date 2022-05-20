docker_start:
	sudo docker-compose up -d node
	sudo docker-compose up -d baker

docker_stop:
	sudo docker-compose stop node
	sudo docker-compose stop baker
