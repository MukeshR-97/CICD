FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app

# Copy all .jar files into the app directory
COPY target/*.jar $APP_HOME/

WORKDIR $APP_HOME

# Adjust the CMD if needed (e.g., specify which .jar to run)
CMD ["java", "-jar", "your-specific-jar-file.jar"]
