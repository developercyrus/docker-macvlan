### Notes
1. Docker run does NOT need any port mapping 
2. By design, host cannot ping to container, even they're situated on the same subnet.
3. The networking equipment on the host needs to be able to handle "promiscuous mode"
```bash

sudo docker run \
  --rm \
  --detach \
  --network ens18_network \
  --name macvlan-demo \
  --ip 192.168.1.100 \
  developercyrus/docker-macvlan

```
