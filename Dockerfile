FROM maven as build
WORKDIR /app
COPY . .
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
COPY --from=build /app/target/mahaLogin-5.0.war /app/
EXPOSE 8080
CMD ["java", "mahaLogin-5.0.war"]





