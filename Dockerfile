FROM adoptopenjdk/maven-openjdk11
WORKDIR /usr/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn clean package
RUN ls /usr/app/target/

COPY /target/demo-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]


# docker run -p 8015:8081 mdits/jenkins:0.0.3

# docker build -t mdits/jenkins:0.0.3 .
