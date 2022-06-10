
# Jakartanet

Launch your Tezos baker on the Jakarta Testnet

### Launch node

  `make docker_start`

### Stop node

  `make dokcer_stop`

### Useful commands
      
Check if the node is bootstrapped:
      
      docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 bootstrapped
      
Import a key to the node:

      docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 import secret key key_alias unencrypted:...

Register an imported key as a delegate:

      docker exec tezos-public-node tezos-client --endpoint http://127.0.0.1:8732 register key key_alias as delegate
      
List connected ledgers:

      docker exec tezos-public-node sudo tezos-client --endpoint http://127.0.0.1:8732 list connected ledgers

Import a key from ledger:

      docker exec tezos-public-node sudo tezos-client --endpoint http://127.0.0.1:8732 import secret key key_alias http://path/to/the/secret/key/on/your/device
