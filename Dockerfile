FROM openjdk:8
RUN useradd -ms /bin/bash petclinic
USER petclinic
WORKDIR /home/petclinic
COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar spring-petclinic.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
