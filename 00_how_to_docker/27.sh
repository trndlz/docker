# Récuperer les logs en continu d’une des tasks du service engineering-bay

docker service logs                                     \
--follow                                                \
$(docker service ps eb --filter "name=eb.2" --quiet)

# --quiet : returns only task ID. Without, the whole table is returned.