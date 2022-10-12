FROM adoptopenjdk/maven-openjdk11
WORKDIR /usr/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn clean package

COPY target/*.jar /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
