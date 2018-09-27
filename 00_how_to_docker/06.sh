# Lancer un container nginx disponible sur le Docker Hub en tâche de fond. Le
# container lancé doit avoir pour nom overlord, doit pouvoir redémarrer de lui même
# et doit avoir le port 80 du container rattaché au port 5000 de Char. Vous
# pouvez vérifier le fonctionnement de votre container en allant sur un
# http://<ip-de-char>:5000 comme URL sur votre navigateur internet

docker run --name overlord -p 5000:80 --restart=always -d nginx

# --name : specifies name
# -p : port specification -> local-machine-port:internal-container-port
# --restart=always -> Always restart the container if it stops.
# -d -> starts container in the background