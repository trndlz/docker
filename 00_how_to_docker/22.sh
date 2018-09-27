# Basculer Aiur comme esclave du swarm local où Char est leader (La commande
# de prise de contrôle de Aiur n’est pas demandée).

docker-machine ssh Aiur "docker swarm join      \
--token $(docker swarm join-token worker --quiet)    \
$(docker-machine ip Char):2377"

# docker swarm join-token
# --quiet : Only display token