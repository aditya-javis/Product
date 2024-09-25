# Use a base image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/Product-0.0.1-SNAPSHOT.jar Product.jar

# Expose the port your application is running on (assuming 8081)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "Product.jar"]
