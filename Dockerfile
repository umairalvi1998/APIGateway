# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the target directory to the container
COPY target/APIGateway-0.0.1-SNAPSHOT.jar /app/APIGateway-0.0.1-SNAPSHOT.jar

# Make port 8080 available to the world outside this container
EXPOSE 7171

# Run the application
ENTRYPOINT ["java", "-jar", "/app/APIGateway-0.0.1-SNAPSHOT.jar"]