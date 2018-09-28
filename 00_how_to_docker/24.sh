# Lancer un SERVICE rabbitmq qui aura pour nom orbital-command.
# Vous devrez définir un user et un mot de passe spécifiques à
# l’utilisation du service RabbitMQ, et ceux-ci seront à votre
# libre convenance. Ce service sera sur le reseau overmind

# RabbitMQ is an open source multi-protocol messaging broker.

docker service create                   \
--detach                                \
--network overmind                     \
--name orbital-command                  \
--env RABBITMQ_DEFAULT_USER=user        \
--env RABBITMQ_DEFAULT_PASS=password    \
rabbitmq
