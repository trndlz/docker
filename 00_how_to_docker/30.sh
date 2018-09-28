# Mettre à jour le nombre de repliques du service marines à 20, car on n ’a jamais
# assez de Marines pour annihiler du Zerg. (Pensez aussi à regarder les tâches et les
# logs du service, vous allez voir, c’est marrant).

docker service update --replicas 20 marine