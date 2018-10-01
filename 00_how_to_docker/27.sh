# Récuperer les logs en continu d’une des tasks du service engineering-bay

docker service logs                                                                 \
--follow                                                                            \
$(docker service ps engineering-bay --filter "name=engineering-bay.2" --quiet)

# --quiet : returns only task ID. Without, the whole table is returned.