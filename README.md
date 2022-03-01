# Launch a Tezos node and baker with docker compose

## Basic docker-compose file to launch a Tezos node on `Ithacanet`

- Upload the .yml file

- Launch `docker-compose up`

- Access the container: `docker exec -it container_name sh`

- Import your key on it: `tezos-client import secret key baker_alias unencrypted:baking_secret_key`

- Launch the baker without docker: `tezos-baker-012-Psithaca --endpoint http://127.0.0.1:8732 run with local node /run/tezos/node/data/ baker_alias`


*Take care when using this script for mainnet keys

