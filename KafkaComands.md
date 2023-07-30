These commands can be run in the Kafka's shell to test whether the data is consumed correctly:
----------------------------------------------------------------------------------------------
kafka-topics --list --bootstrap-server broker:29092

kafka-console-consumer --bootstrap-server broker:29092 --topic keycloak-admin-events --from-beginning

kafka-console-consumer --bootstrap-server broker:29092 --topic keycloak-events --from-beginning