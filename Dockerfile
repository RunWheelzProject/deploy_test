FROM adoptopenjdk/maven-openjdk11


COPY /target/demo-0.0.1-SNAPSHOT.jar demo_app.jar


ENTRYPOINT ["java","-jar","/demo_app.jar"]


# docker run -p 8003:8081 mdits/jenkins:0.0.1

# docker build -t mdits/jenkins:0.0.1 .
