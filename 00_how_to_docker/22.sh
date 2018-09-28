# Basculer Aiur comme esclave du swarm local où Char est leader (La commande
# de prise de contrôle de Aiur n’est pas demandée).

docker-machine ssh Aiur "docker swarm join --token $(docker swarm join-token --quiet worker) $(docker-machine ip Char):2377"

# docker swarm join-token worker --quiet : Returns token only
# --quiet : Only display token
# docker-machine ssh command is used only because it is independant of the active docker-machine !