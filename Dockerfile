FROM maven:3.8.2-jdk-11 AS builder

WORKDIR /

# Copy dependencies for the build
COPY src .
COPY pom.xml .

# Download dependencies and package the app
RUN mvn -f /pom.xml clean package