These commands can be run in the Kafka's shell to test whether the data is consumed correctly:
----------------------------------------------------------------------------------------------

/opt/bitnami/kafka/bin/kafka-topics.sh --list --bootstrap-server localhost:9094

/opt/bitnami/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic keycloak-admin-events --consumer.config /opt/bitnami/kafka/config/consumer.properties --from-beginning

/opt/bitnami/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic keycloak-events --consumer.config /opt/bitnami/kafka/config/consumer.properties --from-beginning