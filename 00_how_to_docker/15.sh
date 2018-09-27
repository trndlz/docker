# Lancer un container phpmyadmin en tâche de fond. Le container doit avoir pour
# nom roach-warden, le port 80 du container doit etre bindé au port 8081 de la
# machine virtuelle et doit pouvoir faire en sorte d’aller explorer la base de données
# contenue dans le container spawning-pool.

docker run                              \
--name roach-warden                     \
--link spawning-pool:db                 \
-p 8081:80                              \
-d                                      \
phpmyadmin/phpmyadmin

# Results verification
# Connect on http://<spawning-pool's IP>:8081
# User : root
# Password : Kerrigan