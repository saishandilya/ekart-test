# Use Amazon Corretto 17 (Alpine-based for lightweight image)
FROM amazoncorretto:17-alpine

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
