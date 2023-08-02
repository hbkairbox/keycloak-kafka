FROM maven:latest AS builder

WORKDIR /

# Copy all files for the build to avoid issues
COPY . .

# Download dependencies and package the app
RUN mvn clean package