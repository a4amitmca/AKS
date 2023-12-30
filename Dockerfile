#
# Build stage
#

FROM eclipse-temurin:17-jdk-jammy AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM eclipse-temurin:17-jre-jammy

ARG JAR_NAME="spring-boot-helloworld"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]