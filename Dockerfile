FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/restaurant-auth-ms.jar
COPY ${JAR_FILE} restaurant-auth-ms.jar
ENTRYPOINT ["java", "-jar", "/restaurant-auth-ms.jar", "--spring.profiles.active=docker"]
