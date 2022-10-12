FROM adoptopenjdk/maven-openjdk11


COPY /target/demo-0.0.1-SNAPSHOT.jar demo_app.jar


ENTRYPOINT ["java","-jar","/demo_app.jar"]
