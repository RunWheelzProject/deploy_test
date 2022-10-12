FROM maven:3.5-jdk-8-alpine

RUN mvn clean install

FROM adoptopenjdk/openjdk11:alpine-jre

COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
