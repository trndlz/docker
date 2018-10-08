FROM debian

RUN apt-get update && apt-get upgrade -y && apt-get install -y gcc vim git make

RUN git clone https://github.com/trndlz/fillit.git

WORKDIR /fillit

RUN make

ENTRYPOINT ["./fillit", "sample"]

#### Build Dockerfile
# docker build -t b01 .
#### Run React App
# docker run -it --rm b01