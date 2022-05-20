docker_start:
	sudo docker-compose up -d node_full
	sudo docker-compose up -d node_rolling
	sudo docker-compose up -d baker

docker_stop:
	sudo docker-compose stop node_full
	sudo docker-compose up -d node_rolling
	sudo docker-compose stop baker
