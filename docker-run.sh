docker run -d \
    --name kafka2cassandra \
    --net bigdata \
    --ip 172.18.0.6 \
    --env KAFKA_BOOTSTRAP_SERVERS="172.18.0.4:9092" \
    --env KAFKA_TOPIC="tweets" \
    --env CASSANDRA_ENDPOINT="172.18.0.2" \
    --env CASSANDRA_KEYSPACE="tweets" \
    infobarbosa/kafka2cassandra:1.0-SNAPSHOT

