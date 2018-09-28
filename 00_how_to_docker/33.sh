# Supprimer l’ensemble des images de containers stocké sur la machine virtuelle
# Char, en une seule commande aussi.

docker rmi $(docker images --all --quiet)

# https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes