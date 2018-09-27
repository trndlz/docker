# Créer un swarm local où la machine virtuelle Char en est le manager.

# A swarm is a group of machines that are running Docker and joined into a cluster.
# After that has happened, you continue to run the Docker commands you’re used to,
# but now they are executed on a cluster by a swarm manager. The machines in a swarm
# can be physical or virtual. After joining a swarm, they are referred to as nodes.

docker swarm init --advertise-addr $(docker-machine ip Char)

# --advertise-addr : Advertised address (format: <ip|interface>[:port])