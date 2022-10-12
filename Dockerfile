FROM maven:3.5-jdk-8-alpine
WORKDIR /target
RUN mvn install

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /target
COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
