# Use a lightweight OpenJDK 17 JRE base image
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy your jar file
COPY *.jar /app/app.jar

# Expose port (optional)
EXPOSE 80

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar","--server.port=80"]
