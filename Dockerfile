FROM openjdk:11-jre-slim

MAINTAINER Avgustina Shevchuk <avgu92@gmail.com>

RUN mkdir /app
COPY ./target/docker-image-0.0.1-SNAPSHOT.jar /app
WORKDIR /app
EXPOSE 8080
CMD ["java", "-jar", "docker-image-0.0.1-SNAPSHOT.jar"]