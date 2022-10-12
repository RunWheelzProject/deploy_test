FROM adoptopenjdk/maven-openjdk11
WORKDIR /usr/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn package
RUN ls /usr/
RUN ls /usr/

COPY ./target/demo-0.0.1-SNAPSHOT.jar /usr/demo_app.jar

RUN ls /usr/

ENTRYPOINT ["java","-jar","/usr/demo_app.jar"]
