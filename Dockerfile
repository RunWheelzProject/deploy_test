FROM maven:3.5-jdk-8-alpine
WORKDIR /usr/app

COPY .mvnw .mvnw
COPY .mvn .mvn
COPY pom.xml pom.xml
COPY src src

RUN ./mvnw install -DskipTests

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /usr/app
COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
