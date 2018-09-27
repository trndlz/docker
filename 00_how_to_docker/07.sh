# Récupérer l’adresse IP interne du container overlord sans lancer son shell et en
# une commande.

# Display all information
# docker inspect overlord

docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' overlord

# Ou plus simple
# docker inspect --format='{{.NetworkSettings.IPAddress}}' overlord