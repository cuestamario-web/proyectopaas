FROM eclipse-temurin:17

WORKDIR /app

COPY target/store-api-1.0-jar-with-dependencies.jar app.jar

COPY data data

EXPOSE 4567

CMD ["java", "-jar", "app.jar"]