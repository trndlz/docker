# Lancer un service 42school/engineering-bay en 2 répliques et faire en sorte que
# le service fonctionne (se référer à la doc fournie dans hub.docker.com). Ce service
# s’appellera engineering-bay et sera sur le reseau overmind

docker service create       \
--detach                    \
--network overmind          \
--name engineering-bay      \
--replicas 2                \
--env OC_USERNAME=user      \
--env OC_PASSWD=password    \
42school/engineering-bay

# --replicas : set the number of replica tasks for a replicated service