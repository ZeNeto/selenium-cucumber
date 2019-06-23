FROM openjdk:11.0.1-jre-slim-stretch
EXPOSE 8080
ARG JAR=com.selenium.cucumber-1.0.10.jar
COPY target/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
