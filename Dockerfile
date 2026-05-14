FROM eclipse-temurin:17

WORKDIR /app

COPY target/store-api-1.0-jar-with-dependencies.jar app.jar

# Crear carpeta data
RUN mkdir -p data

# Crear archivos vacíos
RUN touch data/usuarios.txt
RUN touch data/productos.txt

EXPOSE 4567

CMD ["java", "-jar", "app.jar"]
