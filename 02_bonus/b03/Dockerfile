FROM        python:latest
RUN         pip install --upgrade pip
# Packages installation (you can add all numpy matplotlib pandas-datareader quandl sklearn ...)
RUN         pip install pandas
RUN         mkdir /home/report && mkdir /home/data

COPY        . /home
VOLUME      /home/report /home/data
WORKDIR     /home
CMD         python /home/hello.py

#### Build Dockerfile
# docker build -t b03 .
#### Run python environment
# docker run -it --rm b03
#### Run with STDIN
# docker run -it --rm b03 bash