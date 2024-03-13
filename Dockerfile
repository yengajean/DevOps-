FROM openjdk:17-jdk-slim

LABEL maintainer="Yenga JEAN yengajean2019@gmail.com"

EXPOSE 2020

RUN mkdir -p /app/data

ADD target/demo-0.0.1-SNAPSHOT.jar dockervolume.jar

ENTRYPOINT ["java", "-jar", "dockervolume.jar"]