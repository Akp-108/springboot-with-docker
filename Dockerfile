# FROM openjdk:11
# ARG JAR_FILE=build/libs/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]

# Use the official OpenJDK 11 image as base
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY build/libs/*.jar app.jar

# Expose the port the app runs on
# EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
