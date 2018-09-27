# Lancer un shell depuis un container alpine, en faisant en sorte que vous puissiez
# directement interagir avec le container via votre terminal et que le container se
# supprime à la fin de l’exécution du shell.

docker run -it --rm alpine /bin/sh

# -it instructs Docker to allocate a pseudo-TTY connected to the container’s stdin
# --rm: deletes the container immediately after it exits