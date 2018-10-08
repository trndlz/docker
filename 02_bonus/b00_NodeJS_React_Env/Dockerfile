FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl npm git vim build-essential

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN npm install npm@latest -g
RUN npm install -g create-react-app

RUN create-react-app my-app

WORKDIR /my-app

EXPOSE 3000

ENTRYPOINT [ "npm", "start" ]

#### Build Dockerfile
# docker build -t b00 .
#### Run React App
# docker run -it --rm -p 8080:3000 b00
# Then in browser: http://<machine ip>:8080/