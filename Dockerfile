FROM maven:3.5-jdk-8-alpine
WORKDIR /
RUN mvn clean install

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /
COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
