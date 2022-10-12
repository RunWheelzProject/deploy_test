FROM maven:3.5-jdk-8-alpine
WORKDIR /demo
RUN mvn clean install

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /demo
COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
