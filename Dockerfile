# Use openjdk:8u151-jdk-alpine3.7 base image for Java 8
FROM openjdk:8u151-jdk-alpine3.7

# Set environment variables
ENV APP_HOME=/usr/src/app

# Set the working directory inside the container
WORKDIR $APP_HOME

# Copy the built JAR file into the container
COPY target/shopping-cart-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8070

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]