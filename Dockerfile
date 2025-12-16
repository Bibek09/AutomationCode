FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/selenium-cucumber-docker-1.0-SNAPSHOT.jar /app/app.jar
COPY --from=build /app/src/test/resources /app/resources

CMD ["java", "-cp", "app.jar:resources", "io.cucumber.core.cli.Main", "--plugin", "pretty", "--plugin", "json:target/cucumber-reports.json", "--glue", "stepdefinitions", "features"]
