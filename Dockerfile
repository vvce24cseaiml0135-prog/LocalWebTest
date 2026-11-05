
FROM maven:3.9.6-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .
COPY src ./src
COPY webpage ./webpage

RUN mvn test-compile -B

CMD ["mvn", "test"]
