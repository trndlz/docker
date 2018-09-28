# Créer un réseau interne de type overlay que vous nommerez overmind.

docker network create   \
--driver overlay        \
overmind

# Check result display nodes
# docker network ls