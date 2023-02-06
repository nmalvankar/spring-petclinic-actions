### Example:
### mvn package && docker build . -t petclinic:latest

# FROM docker.io/fabric8/java-alpine-openjdk11-jre

# WORKDIR home

# EXPOSE 8080

# COPY target/spring-petclinic*.jar .

# ENTRYPOINT java -jar spring-petclinic*.jar

FROM registry.access.redhat.com/ubi8/openjdk-11:1.14-12

COPY target/*.jar /opt/spring-petclinic.jar

CMD java -jar /opt/spring-petclinic.jar

EXPOSE 8080
