package-image:
# Build the docker image that we'll use to construct the maven package
	docker build . -t "keycloak-event-listener-image"
# Create the docker container
	docker create --name keycloak-listener-jar-builder keycloak-event-listener-image
# Extract the file to local directory
	docker cp keycloak-listener-jar-builder:/target/keycloak-kafka-1.1.3-jar-with-dependencies.jar .
# Remove the docker container
	docker rm -f keycloak-listener-jar-builder