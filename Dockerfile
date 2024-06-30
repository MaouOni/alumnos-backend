# Use the official maven/Java 17 image to build the app
FROM maven:3.8.5-openjdk-17-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# Use the official openjdk image to run the app
FROM openjdk:17-jdk-slim
COPY --from=build /home/app/target/alumnos-backend-0.0.1-SNAPSHOT.jar /usr/local/lib/alumnos-backend.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/alumnos-backend.jar"]
