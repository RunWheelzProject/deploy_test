FROM maven:3.5-jdk-8-alpine
WORKDIR /usr/app
RUN ./mvnw clean install

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /usr/app
COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
