### Notes
1. Docker run does NOT need any port mapping 
2. By design, EXCEPT host, all other devices on the same subnet can ping to container. 
3. The networking equipment on the host needs to be able to handle "promiscuous mode"
```bash

$ ./create-network.sh

$ sudo docker run \
  --rm \
  --detach \
  --network ens18_network \
  --name macvlan-demo \
  --ip 192.168.1.100 \
  developercyrus/docker-macvlan

```
