FROM openjdk:17-jdk-slim

LABEL version="1.0"
LABEL description="Configserver Microservice image"

# Install curl and bash
RUN apt-get update && apt-get install -y curl bash && rm -rf /var/lib/apt/lists/*

# Copy the application JAR
COPY build/libs/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

# Set the entry point
ENTRYPOINT ["java", "-jar", "configserver-0.0.1-SNAPSHOT.jar"]
