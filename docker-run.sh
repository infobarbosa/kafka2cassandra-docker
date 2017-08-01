docker run -d \
    --name kafka2cassandra \
    --env KAFKA_BOOTSTRAP_SERVERS="172.17.0.3:9092" \
    --env KAFKA_TOPIC="tweets" \
    --env CASSANDRA_ENDPOINT="172.17.0.4:9042" \
    infobarbosa/kafka2cassandra:1.0-SNAPSHOT
