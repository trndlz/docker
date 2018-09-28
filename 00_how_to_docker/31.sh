# Forcer l’arrêt et supprimer l’ensemble des services sur le swarm local,
# en une seule commande

docker service rm $(docker service ls --quiet)

# https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes