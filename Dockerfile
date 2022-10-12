FROM maven:eclipse-temurin:11-jdk
WORKDIR /target
RUN mvn install

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /target
COPY --from=1 /target/*.jar app.jar
CMD ["java -jar app.jar"]
