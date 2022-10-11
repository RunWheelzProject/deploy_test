# Docker Build Stage
<<<<<<< HEAD
FROM adoptopenjdk/openjdk11:alpine-jre
=======
FROM openjdk11 as build
>>>>>>> 12d674c077ad47d7418faa56f21ac2f46042f540

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
