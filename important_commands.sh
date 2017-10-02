# to start elastic search
cd elasticsearch-2.1.1/bin
./elasticsearch


# start zookeeper
kafka/bin/zookeeper-server-start.sh kafka/config/zookeeper.properties

# start kafka
kafka/bin/kafka-server-start.sh kafka/config/server.properties

# create a kafka topic
kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partition 1 --topic test

# write message
kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test

# read message
kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

# services active
ps ax # | grep name_of_service
