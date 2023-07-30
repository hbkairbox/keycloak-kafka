FROM maven:3.8.2-jdk-11 AS builder

WORKDIR /

# Copy dependencies for the build
COPY src .
COPY pom.xml .

# Download dependencies and package the app
RUN mvn -f /pom.xml clean package

# We sleep for a few seconds, just enough time for the `make package-image` command
# to successfully to copy out the files from the running container.
CMD sleep 5