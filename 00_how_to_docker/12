# Lancer un container mysql en tâche de fond. Il devra aussi pouvoir redémarrer de
# lui-même en cas d’erreur et faire en sorte que le mot de passe root de la base de
# données soit Kerrigan. Vous ferez aussi en sorte que la base de données soit stockée
# dans le volume hatchery, que le container crée directement une base de données
# qui aura comme nom zerglings et le container s’appellera spawning-pool.

docker run                              \
--name spawning-pool -d                 \
--env MYSQL_ROOT_PASSWORD=Kerrigan      \
--env MYSQL_DATABASE=zerglings          \
--restart=on-failure                    \
--volume=hatchery:/var/lib/mysql        \
mysql

# Container shell access and viewing MySQL logs
## docker exec -it spawning-pool bash

# Connecting to the MySQL Server inside mysql Client
## mysql -u root -p
## SHOW DATABASES;
## USE zerglings;
## SHOW TABLES;