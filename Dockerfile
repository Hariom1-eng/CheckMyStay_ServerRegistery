# ===========================
# Build Stage
# ===========================
FROM maven:3.9.9-eclipse-temurin-25 AS builder

WORKDIR /app

COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .
COPY src src

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# ===========================
# Runtime Stage
# ===========================
FROM eclipse-temurin:25-jre

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8084

ENTRYPOINT ["java","-jar","app.jar"]
