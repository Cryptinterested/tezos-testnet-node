docker_start:
	sudo docker-compose up -d node_full
	sudo docker-compose up -d node_rolling
	sudo docker-compose up -d baker

docker_stop:
	sudo docker-compose stop node_full
	sudo docker-compose stop node_rolling
	sudo docker-compose stop baker
	
docker_create_key:
	eval $(sudo docker exec tezos-public-node-full tezos-client --endpoint http://127.0.0.1:8732 gen keys baker)
	
docker_register_key_delegate:
	eval $(sudo docker exec tezos-public-node-full tezos-client --endpoint http://127.0.0.1:8732 register key baker as delegate)

docker_list_addresses:
	eval $(sudo docker exec tezos-public-node-full tezos-client --endpoint http://127.0.0.1:8732 list known addresses)
	
docker_list_ledger_addresses:
	eval $(sudo docker exec tezos-public-node-full sudo tezos-client --endpoint http://127.0.0.1:8732 list known addresses)
	
docker_get_balance:
	eval $(sudo docker exec tezos-public-node-full tezos-client --endpoint http://127.0.0.1:8732 get balance for baker)

docker_ledger_bake:
	eval $(sudo docker exec tezos-public-node-full sudo tezos-client --endpoint http://127.0.0.1:8732 setup ledger to bake for baker)

docker_chain_head:
	eval $(sudo docker exec tezos-public-node-full tezos-client --endpoint http://127.0.0.1:8732 rpc get /chains/main/blocks/head/header)

