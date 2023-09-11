# Usa una imagen base de Maven para compilar la aplicación
FROM maven:3.6.3-jdk-11 as builder

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el pom.xml y descarga las dependencias para aprovechar la cache de Docker
COPY pom.xml .
RUN mvn dependency:go-offline

# Copia el código fuente al contenedor
COPY src src

# Compila la aplicación
RUN mvn package

# Usa una imagen base de Java para ejecutar la aplicación
FROM openjdk:11-jre-slim

# Copia el JAR del paso anterior al nuevo contenedor
COPY --from=builder /app/target/*.jar app.jar

# Establece la variable de entorno para Spring Boot usar
ENV SPRING_PROFILES_ACTIVE=prod

# Ejecuta la aplicación
CMD ["java", "-jar", "app.jar"]
