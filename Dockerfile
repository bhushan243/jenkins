# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# cd /opt/app
WORKDIR /opt/app

# cp target/MyWebApp.war /opt/app/app.jar
COPY MyWebApp/target/MyWebApp.war /opt/app/

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-war","MyWebApp.war"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0
