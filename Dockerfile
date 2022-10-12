FROM adoptopenjdk/maven-openjdk11
WORKDIR /usr/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn clean package

COPY --from=build /target/*.jar app.jar
CMD ["java -jar app.jar"]
