FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY wait-for-it.sh /wait-for-it.sh
RUN apk add --no-cache bash
RUN chmod +x /wait-for-it.sh
ENTRYPOINT ["java","-jar","/app.jar"]
