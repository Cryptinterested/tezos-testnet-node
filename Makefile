docker_start:
	sudo docker-compose up -d node_full
	sudo docker-compose up -d node_rolling
	sudo docker-compose up -d baker

docker_stop:
	sudo docker-compose stop node_full
	sudo docker-compose stop node_rolling
	sudo docker-compose stop baker
	
docker_create_key:
	sudo docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 gen keys baker
	
docker_register_key_delegate:
	sudo docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 register key baker as delegate

docker_list_addresses:
	sudo docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 list known addresses
	
docker_list_ledger_addresses:
	sudo docker exec tezos-public-node sudo tezos-client --endpoint http://127.0.0.1:8732 list known addresses
