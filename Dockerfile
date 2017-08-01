FROM openjdk:8-alpine

MAINTAINER Barbosa <infobarbosa@yahoo.com.br>

RUN apk add --no-cache wget bash \
    && mkdir -p /opt/kafka2cassandra

COPY start.sh /opt/kafka2cassandra/
COPY kafka2cassandra-1.0-SNAPSHOT.jar /opt/kafka2cassandra/

WORKDIR /opt/kafka2cassandra

CMD ["/opt/kafka2cassandra/start.sh"]
