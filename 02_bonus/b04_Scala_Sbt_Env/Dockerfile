FROM java:8-jdk

ENV SCALA_VERSION 2.11.7
ENV SBT_VERSION 0.13.8

RUN curl -O -L http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz
RUN tar xzvf scala-${SCALA_VERSION}.tgz
RUN rm scala-${SCALA_VERSION}.tgz

ENV SCALA_HOME /scala-${SCALA_VERSION}
ENV PATH ${SCALA_HOME}/bin:$PATH

RUN curl -O -L https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/${SBT_VERSION}/sbt-launch.jar
RUN mv sbt-launch.jar /bin/sbt-launch.jar
COPY sbt /bin/sbt
RUN chmod u+x /bin/sbt

RUN sbt info

#### Build Dockerfile
# docker build -t b04 .
#### Run Scala environment
# docker run -it --rm b04 scala

# Example
# val a = array(1, 2, 3, 4)
# a.sum